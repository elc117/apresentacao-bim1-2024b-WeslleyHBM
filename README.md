# Resolução da Função 13 - Detecção de Bounding Boxes Inválidas

## Introdução

Neste exercício, foi proposto implementar uma função em **Haskell** que identifique "bounding boxes" inválidas em uma lista. Uma **bounding box** é representada por quatro números do tipo `Float` no formato `(x1, y1, x2, y2)`, onde:

- `(x1, y1)` representa o canto superior esquerdo da caixa;
- `(x2, y2)` representa o canto inferior direito da caixa.

Uma bounding box é considerada **inválida** se:

- `x2 < x1` (a largura é negativa);
- `y2 < y1` (a altura é negativa).

A tarefa é criar uma função que retorna apenas as caixas inválidas de uma lista fornecida.

## Resolução

### Função: `getInvalidBoundingBox`

Esta função verifica se uma única bounding box é inválida. Ela recebe um tuplo com quatro números e retorna `True` se a caixa for inválida, e `False` caso contrário.

```haskell
getInvalidBoundingBox :: (Float, Float, Float, Float) -> Bool
getInvalidBoundingBox (x1, y1, x2, y2) = if(x2 < x1 || y2 < y1) then True else False
