import System.Environment
import System.Process

main =
  getEnv "ghc" >>= \ghc ->
    case ghc of
      "8.6.5" -> callProcess "cabal" ["test"
                  , "--constraint=bytestring == 0.10.*"
                  ]
      "8.8.4" -> callProcess "cabal" ["test"]
      "8.10.2" -> callProcess "cabal" ["test"
                  , "--constraint=bytestring == 0.11.*"
                  ]
