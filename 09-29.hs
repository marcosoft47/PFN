soma_e_sub (a, b) = (a + b, a - b) 

esf = [(x,y,z) | x <- [0..100], y <- [0..100], z <-[0..100], x^2 + y^2 + z^2 == 9]

-- Tarefinhas <3

resultado [] = []
resultado (x:xs) =
    if x<7 then
        ("Reprovado", x) :
        resultado xs
    else
        ("Aprovado", x) :
        resultado xs


{-maior [x] = x
maior (x:xs) =
    if (x > maior xs) then
        x
    else
        maior xs

posicao_lista num [x] = 0
posicao_lista num (x:xs) =
    if num == x then
        0
    else
        1 + posicao_lista num (xs)
    
maiorposicao (x:xs) = [ (valor, indice) | valor <- maior (x:xs), indice <- posicao_lista (maior (x:xs)) (x:xs)] -}