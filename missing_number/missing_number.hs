import System.Environment

missing_number :: [Int] -> Int -> Int
missing_number list num =
  head [ i | i <- [1..num], i `notElem` list]

main = do
  args <- getArgs
  print $ missing_number (map read (tail args)) (read $ head args)
