-- Cálculo Lambimia

cubo = \x -> x*x*x

somaTresTermos = \x -> (\y -> (\z -> (x+y+z)))

reducaobeta = (\x -> x) (\a -> a) (\c -> c)
{-
    A redução Beta simplifica uma passagem de argumentos.
    A função \x fica com o valor de \a
    \a fica com o valor de \c
    \c fica com o valor que o usuário passar.
-}

exe1 = (\a -> \b -> \c -> (c*b*a))