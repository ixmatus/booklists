let Book = { title : Text, author : Text, href : Text }

let Enriched =
      { book : Book
      , publisher : Text
      , published : Text
      , volumes : Natural
      , pages : Natural
      , language : Text
      , summary : Optional Text
      , isbn-10 : Optional Text
      , isbn-13 : Optional Text
      }

in  { Book = Book, Enriched = Enriched }
