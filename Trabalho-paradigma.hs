-- Função 13
-- Crie uma função para obter possíveis bounding boxes inválidas na lista de bounding boxes. Uma bounding box é inválida se x2 < x1 ou y2 < y1. 
-- Resolva esta função sem usar lambda.
-- 
-- Exemplo de uso:
-- ghci> getInvalidBoundingBoxes boundingBoxes
-- []
-- ghci> getInvalidBoundingBoxes [(1.0,2.0,3.0,4.0),(3.0,4.0,1.0,2.0)]
-- [(3.0,4.0,1.0,2.0)]
-- 
-- 
-- Nome e tipo da função:
-- getInvalidBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]
getInvalidBoundingBox :: (Float, Float, Float, Float) -> Bool
getInvalidBoundingBox (x1, y1, x2, y2) = if(x2 < x1 || y2 < y1) then True else False

getInvalidBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]
getInvalidBoundingBoxes l = filter getInvalidBoundingBox l

--repete
