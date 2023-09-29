-- 1
soma 1 = 1
soma n = soma (n-1) + n

soma2 n1 n2 = soma n2 - soma n1 + n1
soma2_semlimite n1 n2 = soma n2 - soma n1 - n2

-- 2
fatorial 0 = 1
fatorial x =
    fatorial (x-1) * x

taylor 0 _ = 1
taylor _ 0 = 1

taylor x n =
    taylor x (n-1) + ((x**n) / fatorial n)