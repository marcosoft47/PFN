import Control.Monad
import System.IO
--import char

data Shape = Circulo Float Float Float | Retangulo Float Float Float Float deriving (Show)
area :: Shape -> Float
area (Circulo _ _ r) = pi * r^2
area (Retangulo x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2-y1)

-- sqrt $ 3 +2 +4 === sqrt (3 +2 +4)

type Numerodetel = String
type Nome = String
type Agenda = [(Nome, Numerodetel)]

mai = map toUpper "aeiou"
--IO em Haskell
main :: IO ()
main = do
    conteudo <- readFile "txt1.txt"
    {-
    conteudo2 <- readFile "txt2.txt"
    appendFile "txt1.txt" (conteudo2)
    putStrLn conteudo
    -}
    --let mai = map toUpper conteudo
    --putStrLn mai
    putStrLn conteudo