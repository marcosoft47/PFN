tamanho [] = 0
tamanho (x:xs) = 1 + tamanho xs

soma [] = 0
soma (x:xs) = x + soma xs

maior [x] = x
maior (x:xs) =
    if (x > maior xs) then
        x
    else
        maior xs

remdupli [] = []
remdupli (x:xs) | x `elem` xs = remdupli xs
                | otherwise = x : remdupli xs


-- Lista de exercício

-- Lista [x ** 3 | x <- [1..8]]

duplicalist [] = []
duplicalist (x:xs) = x : x : duplicalist xs

impar [] = []
impar (x:xs) =
    if x `mod` 2 == 0 then
        impar xs
    else
        x : impar xs