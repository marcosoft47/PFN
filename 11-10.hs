import Data.Char

mult2 x = 2*x

mapear _ [] = []
mapear f (x:xs) = f x : mapear f xs

soma [] = 0
soma (x:xs) = x + soma(xs)

reduzir f [x] = x
reduzir f (x:xs) = f x (reduzir f xs)

reduzird f aux [] = aux
reduzird f aux (a:b) = f a (reduzird f aux b)

--1
all2min = toLower
all2mai = toUpper
num2string x
    | x == 0 = "zero"
    | x == 1 = "um"
    | x == 2 = "dois"
    | x == 3 = "tres"
    | x == 4 = "quatro"
    | x == 5 = "cinco"
    | x == 6 = "seis"
    | x == 7 = "sete"
    | x == 8 = "oito"
    | x == 9 = "nove"
    | otherwise = ""

transforma _ [] = []
transforma f (x:xs) = f x : (transforma f xs)

-- Imagina usar variáveis numa linguagem sem variáveis
numeros = ["zero", "um", "dois"]
num2string' x = numeros !! x
-- Can't relate