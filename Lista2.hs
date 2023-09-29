--1
--facilmente trocável por `elem`
pertence i [] = False
pertence i (x:xs) =
    if i == x then
        True
    else
        pertence i xs

--2
intersecao [] _ = []
intersecao _ [] = []
intersecao (x:xs) (y:ys) =
    if pertence x (y:ys) then
        x:intersecao xs (y:ys)
    else
        intersecao xs (y:ys)

--3
inverso [] = []
inverso (x:xs) =
    inverso xs ++ [x]

--4
nUltimosrec 0 _ = []
nUltimosrec _ [] = []
nUltimosrec i (x:xs) =
   x:nUltimosrec (i-1) xs

nUltimos i (x:xs) =
    inverso (nUltimosrec (i) (inverso (x:xs)))
    
--5
soma2 [] _ = []
soma2 _ [] = []
soma2 (x:xs) (y:ys) =
    [x+y] ++ soma2 xs ys

--6
pot2 0 = []
pot2 x =
    pot2 (x-1) ++ [2^x]

--7
intercalacao (x:xs) (y:ys) =
    if x < y then
        x : intercalacao xs (y:ys)
    else
        y : intercalacao (x:xs) ys

intercalacao [] xs = xs
intercalacao xs [] = xs

--8
menor [x] = x
menor (x:xs) =
    if x < menor xs then
        x
    else
        menor xs

--9
removerElem _ [] = []
removerElem i (x:xs) =
    if i == x then
        xs
    else
        x : removerElem i xs

--10
ordenar [] = []
ordenar (x:xs) =
    menor (x:xs) : ordenar (removerElem (menor (x:xs)) (x:xs))

--11
insereOrd n [] = [n]
insereOrd n (x:xs) =
    if n == x then
        x : xs
    else if n > x then
        [x] ++ insereOrd n xs
    else
       [n] ++ x : xs

--12
enesimo _ [] = 0
enesimo n (x:xs) =
    if n == 1 then
        x
    else if n < 1 then
        0
    else
        enesimo (n-1) xs

--13 
repetir 1 e = [e]
repetir n e =
    if n < 1 then
        []
    else
        [e] ++ repetir (n-1) e

--14
removeTab [] = []
removeTab (x:xs) =
    if x == '\t' then
        ' ' : removeTab xs
    else
        x : removeTab xs

--15
alfaMinus = ['a'..'z']
alfaMaius = ['A'..'Z']

verposicao _ _ [] = 0
verposicao n pos (x:xs) =
    if n == x then
        pos
    else
        verposicao n (pos+1) (xs)

pegaminus pos (x:xs) =
    if pos == 1 then
        x
    else
        pegaminus (pos-1) xs

minusculas [] = []
minusculas (x:xs) =
    if pertence x alfaMaius then
        [pegaminus (verposicao x 1 alfaMaius) alfaMinus] ++ minusculas (xs)
    else
        [x] ++ minusculas xs

--16
inversoDupla [] = []
inversoDupla ((a,b):xs) =
    (b,a) : inversoDupla xs

--17
simetrico [] = []
simetrico ((a,b):xs) =
    if a == b then
        True : simetrico xs
    else
        False : simetrico xs

--18
numString x = show x

--19
stringNum x = read x :: Int

--20

{-
Duas funções separadas
naoZero trata todos os números exceto o 0
decBin trata o 0 separadamente
Se não tivesse duas funções, todos os números teriam 0 no começo
-} 
naoZeroParaBin 0 = ""
naoZeroParaBin x =
    if x `mod` 2 == 1 then
        naoZeroParaBin (x `div` 2) ++ "1"
    else
        naoZeroParaBin (x `div` 2) ++ "0"

decBin x =
    if x == 0 then
        "0"
    else
        naoZeroParaBin x


--21
-- 1 1 0 1 == 13
-- 2^3 + 2^2 + 0^1 + 2^1 == 8 + 4 + 2 + 1 == 13
binDecRecursion _ 0 = 0
binDecRecursion [] _ = 0
binDecRecursion (x:xs) loop =
    if x == '1' then
        (2^(loop-1)) + binDecRecursion xs (loop-1)
    else
        binDecRecursion xs (loop-1)

binDec x = binDecRecursion x (length x)

--22
resto divisor dividendo =
    dividendo - (divisor * (dividendo `div` divisor))

trocoCentavo 0 = []
trocoCentavo troco =
    if troco >= 50 then
        (50, troco `div` 50) : trocoCentavo (resto 50 troco)
    else if troco >= 20 then 
        (20, troco `div` 20) : trocoCentavo (resto 20 troco)
    else if troco >= 10 then
        (10, troco `div` 10) : trocoCentavo (resto 10 troco)
    else if troco >= 5 then
        (5, troco `div` 5) : []
    else
        []

trocoCafe valor pago = trocoCentavo (pago-valor)