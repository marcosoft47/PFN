import System.IO
import Control.Monad
import Data.Char
import Data.String
import Data.List
import Data.Function
type Doc = String
type Linha = String
type Palavra = String

main = do
    ----- Começo de Funções -----
    let removerpontuacao x =
            if (isAlpha x) || (isDigit x) || (isSpace x) then
                True
            else
                False
    let textoSemPonto texto = filter removerpontuacao texto

    let enumLinha _ [] = []
        enumLinha n (x:xs) =
            (n,x) : enumLinha (n+1) xs
    
    --a
    let divLinhas texto = lines texto
    let _ = divLinhas :: Doc -> [Linha]

    --b
    let numLinhas texto = enumLinha 1 texto
    let _ = numLinhas :: [Linha] -> [(Int, Linha)]

    --c
    let createPalavrasTuples _ [] = []
        createPalavrasTuples n (x:xs) = (n,x) : createPalavrasTuples n xs

    let numPalavras [] = []
        numPalavras ((n,texto):ns) = (createPalavrasTuples n (words texto)) ++ numPalavras ns
    let _ = numPalavras :: [(Int, Linha)] -> [(Int, Palavra)]

    --d
    let ordernar [] = []
        ordernar ((n,texto):ns) = sortBy (compare `on` snd) ((n,texto):ns)
    let _ = ordernar :: [(Int, Palavra)] -> [(Int, Palavra)]
    
    --e
    
    let agrupar [] = []
        agrupar [(n,texto)] = [([n],texto)]
        agrupar ((n,texto):ns) =
            if texto == (snd (head (agrupar ns))) then
                ((n:(fst (head (agrupar ns)))), texto):(tail (agrupar ns))
            else
                ([n],texto) : agrupar ns
    let _ = agrupar :: [(Int, Palavra)] -> [([Int],Palavra)]

    --f
    let eliminarRep' [] = []
        eliminarRep' [x] = [x]
        eliminarRep' (x:xs) =
            if (x == head xs) then
                eliminarRep' xs
            else
                x : eliminarRep' xs

    let eliminarRep [] = []
        eliminarRep (((x:xs),texto):ns) =
            ((eliminarRep' (x:xs)), texto) : eliminarRep ns
    
    --Eliminar menos de três letras
    let menosTres [] = []
        menosTres (((x:xs), texto):ns) =
            if (length texto < 3) then
                menosTres ns
            else
                ((x:xs), texto) : menosTres ns

    let construirindice texto = menosTres (eliminarRep (agrupar (ordernar (numPalavras (numLinhas (divLinhas (textoSemPonto texto)))))))
    let _ = construirindice :: Doc -> [([Int], Palavra)]

    ----- Fim de Funções -----

    putStrLn "Abrir qual documento?"
    documento <- getLine
    texto <- readFile documento

    print $ construirindice texto
