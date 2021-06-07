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
strColor :: (Int,Int,Int) -> String
strColor (x, y, z) = "rgb(" ++ show x ++ ", " ++ show y ++ ", " ++ show z ++ ")"
--solução prof:
--strColor (r, g, b) = printf "rgb(%d, %d, %d)" r g b

-- 5)
genCircs :: Int -> (Int,Int) -> Int -> [(Int,Int,Int)]
genCircs n (cx, cy) r = [(cx, cy, r) | cx <- (take n (iterate(\x -> x+4)cx))]
--genCircs n (cx, cy) r = take n [(cx, cy, r) | cx <- (iterate (+4) cx)]

-- 6) solução prof:
genReds :: Int -> [(Int,Int,Int)]
genReds n = [(80+i*10, 0, 0) | i <- [0..n-1]]
