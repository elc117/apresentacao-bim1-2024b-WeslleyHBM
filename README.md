Introdução
O problema proposto consiste em desenvolver uma função em Haskell que detecte "bounding boxes" inválidas dentro de uma lista. Uma caixa delimitadora (caixa delimitadora) é representada por um tuplo de quatro números (x1, y1, x2, y2), onde:

(x1, y1) representa o canto superior esquerdo da
(x2, y2) representa o canto inferior direito da c
Uma caixa delimitadora é considerada inválida se o valor de x2 for menor que o de x1 ou se o valor de y2 for menor que o de y1. UM

Resolução
Função:getInvalidBoundingBox
Essa função é responsável por verificar se uma única caixa delimitadora é inválida. Ela recebe como argumento um tuplo contendo quatro números flutuantes (Float) e retorna um valor booleano ( TrueouFalse), onde:

Trueindica que a caixa está inválida (x2 < x1 ou y2
Falseeu
Haskell- o nome do autor é Haskell.

Copiar código
getInvalidBoundingBox :: (Float, Float, Float, Float) -> Bool
getInvalidBoundingBox (x1, y1, x2, y2) = if(x2 < x1 || y2 < y1) then True else False
Função:getInvalidBoundingBoxes
Esta função se aplica getInvalidBoundingBoxa uma lista de caixas delimitadoras para retornar somente aquelas que são inválidas. Ela utiliza a função filterque filtra os elementos

há

Copiar código
getInvalidBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]
getInvalidBoundingBoxes l = filter getInvalidBoundingBox l
Exemplo de uso
Entrada:

Haskell- o nome do autor é Haskell.

Copiar código
ghci> getInvalidBoundingBoxes [(1.0,2.0,3.0,4.0),(3.0,4.0,1.0,2.0)]
S

Haskell- o nome do autor é Haskell.

Copiar código
[(3.0,4.0,1.0,2.0)]
Quem fez
Nome: Weslley Henrique De Bitencourt Menezes
Matrícula: 202320537
Fontes
ChatGPT (Assistente de resolução e explicação de problemas em Haskell)
Site da professora: LiaScript
Consultas com colegas
