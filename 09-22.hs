maior a b =
    if a > b then
        a
    else
        b

maior3 a b c =
    maior(maior a b) c

fat 0 = 1

fat n =
    n * fat (n-1)

pot a 0 = 1
pot a e =
    a * pot a (e-1)


{-
    Algoritmo de Euclides
    Se a for maior que b, substitui a por a - b.
    Se b for maior que a, substitui b por b - a.
    Repete até b = 0, e a será o maior divisor comum entre a e b
-}

mdc a 0 =
    a

mdc a b =
    if a > b then
        mdc (a - b) b
    else
        mdc a (b - a)

-- | (guards) === switch case

mdc' a b | a == b = a
         | a > b = mdc' (a - b) b
         | a < b = mdc' (b - a) a

{-
    Aspas simples == Caracter
    Aspas duplas == String == Lista de caracteres

    Listas:
        Vazia []
        Célula: x:xs, onde (:)::a->[a]->[a]
        x == cabeça
        xs == cauda

        [1, 2, 3, 4] == 1:(2:(3:(4:[]))) == 1:2:3:4:[]
-}

tamanho [] = -- (1)
    0

tamanho (x:xs) = -- (2)
    1 + tamanho xs
    {-
        tamanho [1, 2, 3, 4, 5] =
        1 + tamanho [2, 3, 4, 5] =
        1 + 1 + tamanho [3, 4, 5] =
        1 + 1 + 1 + tamanho [4, 5] =
        1 + 1 + 1 + 1 + tamanho [5] =
        1 + 1 + 1 + 1 + 1 + tamanho [] =
        1 + 1 + 1 + 1 + 1 + 0 =
        5

        (:) :: a -> [a] -> [a]

        x: xs :: [a]
        x :: a
        xs :: [a]
        x == cabeça == primeiro termo
        xs == cauda == o resto
    -}

soma [] =
    0

soma (x:xs) =
    x + soma xs

-- 22/09

fib 0 =
    0

fib 1 = 
    1

fib n =
    if (n > 0) then
        fib (n-1) + fib (n-2)
    else
        fib (n * (-1)) * (-1)


primeiro 0 _ =
    []

primeiro _ [] =
    []

primeiro n (x:xs) =
    x:primeiro (n-1) xs