-- 1
modulo x =
    if x > 0 then
        x
    else
        -x

ehTriangulo a b c | not(modulo (a-b) < a && a < (b+c)) = False
                  | not(modulo (a-c) < b && b < (a+c)) = False
                  | not(modulo (a-b) < c && c < (a+b)) = False
                  | otherwise = True

-- 2
tipoTriangulo a b c | a == b && b == c = "equilatero"
                    | a == b || b == c = "isosceles"
                    | a /= b && a /= c && b /= c = "escaleno"

-- 3
triangulo a b c =
    if (ehTriangulo a b c) then
        tipoTriangulo a b c
    else
        "nao eh um triangulo"

-- 4
soma [] =
    0
soma (x:xs) =
    x + soma xs

somaPares n =
    soma [0, 2..n]

-- 5
potencia a 0 =
    1
potencia a b =
    a * potencia a (b - 1)
somaPot2m m 0 =
    m
somaPot2m m n =
    (potencia 2 n * m) + somaPot2m m (n-1)

-- 6
checkPrimoDivisao x [] =
    True

checkPrimoDivisao x (y:ys) =
    if x `mod` y == 0 then
        False
    else
        checkPrimoDivisao x (ys)

primo x =
    if x > 0 then
        if checkPrimoDivisao x [2..(x-1)] then
            True
        else
            False
    else
        False

-- 7
piRecursion n sum counting sinal =
    if n < counting then
        sum
    else
        if sinal then
            piRecursion n (sum + (4/counting)) (counting + 2) (not sinal)
        else
            piRecursion n (sum - (4/counting)) (counting + 2) (not sinal)

seriePI n =
    piRecursion n 0 1 True