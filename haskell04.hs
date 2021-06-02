-- Prática 04 de Haskell
-- Nome: Isadora Silveira Moro

-- 1)
faixaIdoso :: Int -> String
faixaIdoso idade
  |idade >= 60 && idade < 65 = "IDO64"
  |idade >= 65 && idade < 70 = "IDO69"
  |idade >= 70 && idade < 75 = "IDO74"
  |idade >= 75 && idade < 80 = "IDO79"
  |idade >= 80 = "IDO80"
  |otherwise = "ND"

-- 2)
classifIdosos :: [(String,Int)] -> [(String,Int,String)]
classifIdosos lis = [(x, y, faixaIdoso y) | (x,y) <- lis]

-- 3)
classifIdosos' :: [(String,Int)] -> [(String,Int,String)]
classifIdosos' lis = map (\(x, y) -> (x, y, faixaIdoso y)) lis

-- 4)
--strColor :: (Int,Int,Int) -> String

-- 5)
--genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]

-- 6)
--genReds :: Int -> [(Int,Int.Int)]
