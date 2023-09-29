agrupar [] = []
agrupar [(n,texto)] = [([n],texto)]
agrupar ((n,texto):ns) =
    if texto == (snd (head (agrupar ns))) then
        ((n:(fst (head (agrupar ns)))), texto):(tail (agrupar ns))
    else
        ([n],texto) : agrupar ns