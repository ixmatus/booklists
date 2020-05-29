-- https://intelligence.org/research-guide/
let types = ../types.dhall

in    [ { title = "Naive Set Theory"
        , author = "Paul R. Halmos"
        , href = "https://www.librarything.com/work/243306"
        }
      , { title = "Computability and Logic"
        , author = "George S. Boolos"
        , href = "https://www.librarything.com/work/88701"
        }
      , { title = "Probability Theory: The Logic of Science"
        , author = "E. T. Jaynes"
        , href = "https://www.librarything.com/work/323850"
        }
      , { title =
            "Probabilistic Reasoning in Intelligent Systems: Networks of Plausible Inference"
        , author = "Judea Pearl"
        , href = "https://www.librarything.com/work/294302"
        }
      , { title = "All of Statistics: A Concise Course in Statistical Inference"
        , author = "Larry Wasserman"
        , href = "https://www.librarything.com/work/605788"
        }
      , { title = "Understanding Machine Learning: From Theory to Algorithms"
        , author = "Shai Shalev-Shwartz"
        , href = "https://www.librarything.com/work/15102055"
        }
      , { title = "Artificial Intelligence: A Modern Approach"
        , author = "Stuart J. Russell"
        , href = "https://www.librarything.com/work/43569"
        }
      , { title = "An Introduction to Decision Theory"
        , author = "Martin Peterson"
        , href = "https://www.librarything.com/work/8579333"
        }
      , { title = "Game Theory: An Introduction"
        , author = "Steven Tadelis"
        , href = "https://www.librarything.com/work/13767183"
        }
      , { title = "The Logic of Provability"
        , author = "George S. Boolos"
        , href = "https://www.librarything.com/work/379252"
        }
      , { title = "A Mathematical Introduction to Logic"
        , author = "Herbert B. Enderton"
        , href = "https://www.librarything.com/work/354585"
        }
      , { title = "Mathematics for Computer Science"
        , author = "Eric Lehman"
        , href = "https://www.librarything.com/work/12593700"
        }
      , { title = "Linear Algebra Done Right"
        , author = "Sheldon Axler"
        , href = "https://www.librarything.com/work/175579"
        }
      , { title = "Introduction to combinators and lambda-calculus"
        , author = "J. R. Hindley"
        , href = "https://www.librarything.com/work/2544327"
        }
      , { title = "Basic Category Theory for Computer Scientists"
        , author = "Benjamin C. Pierce"
        , href = "https://www.librarything.com/work/244715"
        }
      , { title = "Topology"
        , author = "James R. Munkres"
        , href = "https://www.librarything.com/work/11755494"
        }
      , { title = "Introduction to the Theory of Computation"
        , author = "Michael Sipser"
        , href = "https://www.librarything.com/work/43791"
        }
      , { title = "Principles of Model Checking"
        , author = "Christel Baier"
        , href = "https://www.librarything.com/work/6134234"
        }
      , { title = "Superintelligence: Paths, Dangers, Strategies"
        , author = "Nick Bostrom"
        , href = "https://www.librarything.com/work/23887694"
        }
      , { title = "Rationality: From AI to Zombies"
        , author = "Eliezer Yudkowsky"
        , href = "https://www.librarything.com/work/15928548"
        }
      , { title = "Inadequate Equilibria: Where and How Civilizations Get Stuck"
        , author = "Eliezer Yudkowsky"
        , href = "https://www.librarything.com/work/20720595"
        }
      ]
    : List types.Book
