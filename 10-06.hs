--1
comprimento [] = 0
comprimento (x:xs) =
    1 + comprimento xs

--2
primeiros _ [] = []
primeiros i (x:xs) =
    if i > 0 then
        x : primeiros (i-1) xs
    else
        []

--3
pertence _ [] = False
pertence i (x:xs) =
    if i == x then
        True
    else
        pertence i xs

--4
inverte [] = []
inverte (x:xs) =
    inverte xs ++ [x]

--5
quadrado = [x^2 | x <- [10..20]]

--6
somaigualdois = [(x,y)| x <- [-10..10], y <- [-10..10], x + y == 2]