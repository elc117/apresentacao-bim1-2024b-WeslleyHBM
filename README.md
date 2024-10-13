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
```
### Função: `getInvalidBoundingBoxs`

Esta aplicação tem a função de verificar a invalidação de uma lista de caixas delimitadoras, retornando uma nova lista contendo apenas aquelas que são inválidas.

```haskell
getInvalidBoundingBoxes :: [(Float, Float, Float, Float)] -> [(Float, Float, Float, Float)]
getInvalidBoundingBoxes l = filter getInvalidBoundingBox l
```
A função filter percorre a lista `l` e aplica a função getInvalidBoundingBox para filtrar somente as caixas inválidas.

## Exemplo de uso

### Entrada:

```haskell
ghci> getInvalidBoundingBoxes [(1.0,2.0,3.0,4.0),(3.0,4.0,1.0,2.0)]
```

### Saída:

```haskell
[(3.0,4.0,1.0,2.0)]
```
No exemplo acima, a segunda caixa delimitadora (3.0,4.0,1.0,2.0)é considerada inválida porque x2 < x1e y2 < y1.

## Autor

Nome: **Wesley Henrique De Bitencourt Menezes**
Matrícula: **202320537**

## Fontes

ChatGPT: [Assistência na elaboração e explicação das funções em Haskell.](https://chatgpt.com/)
LiaScript: [Plataforma da professora utilizada para consulta de conteúdo teórico.](https://liascript.github.io/course/?https://raw.githubusercontent.com/AndreaInfUFSM/elc117-2024b/main/classes/06/README.md#1)
Consultas com colegas: [Discussões e troca de ideias sobre o problema.].(Tales cruz).
