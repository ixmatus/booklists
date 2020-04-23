module Main where

import Dhall
import Options.Generic

import qualified Dhall.Core
import qualified Data.Set as Set

data Options w = Options
    { booklist :: w ::: [FilePath] <?> "List of filepaths to Dhall expressions containing book lists"
    } deriving (Generic)

instance ParseRecord (Options Wrapped)
deriving instance Show (Options Unwrapped)

data Book = Book
  { title :: Text
  , author :: Text
  , href :: Text
  } deriving (Show, Eq, Ord, Generic, Inject, Interpret)

main :: IO ()
main = do
  Options{ booklist } <- unwrapRecord "Compute essential book list"

  bookLists <- traverse (inputFile auto) booklist

  let bookSets :: [ Set Book ]
      bookSets = fmap fromList bookLists

  let essentialList :: [ Book ]
      essentialList = toList (foldl' Set.intersection mempty bookSets)

  print (Dhall.Core.pretty $ embed inject essentialList)
