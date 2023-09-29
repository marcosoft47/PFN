mapear _ [] = []
mapear f (x:xs) = f x : mapear f xs

reduzir f [x] = x
reduzir f (x:xs) = f x (reduzir f xs)

reduzird f aux [] = aux
reduzird f aux (x:xs) = f x (reduzird f aux xs)

--1
lista10 = [1..10]
lista = take 10 (repeat 1)
listai :: [(Float, Float)]
listai = zip lista10 lista

fatorial 0 = 1
fatorial n = n * fatorial (n-1)
divisao a = snd(a)/fst(a)

listaf = zip (mapear fatorial lista10) lista
listad = mapear divisao listaf

exponencial n = reduzird (+) n listad