{-
[f x | x <- xs, p x]

(f x) = aplicações da função f em x
(xs) = vetores de entrada da compreensão
(p x) condição p/ a compreensão de lista

[triplo x | x <- [1..10], par x]
-}

triplo x = 3*x
par x = if x `mod` 2 == 0 then True else False

filtrar _ _ [] = []
filtrar f p (x:xs)
    | p x = (f x) : (filtrar f p xs)
    | otherwise = filtrar f p xs

f0 p f xs = map f $ filter p xs