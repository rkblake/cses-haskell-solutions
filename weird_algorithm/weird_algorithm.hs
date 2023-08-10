import System.Environment

print_num n =
  putStr (show . n ++ " ")

collatz' :: Integer -> Integer
collatz' 1 = 1
collatz' n
  | n `mod` 2 == 0 = n `div` 2
  | n `mod` 2 == 1 = 3*n+1

collatz :: Integer -> IO ()
collatz 1 = print_num 1
collatz n = do
  print_num n
  collatz (collatz' n)


main = do
  args <- getArgs
  collatz . read $ head args
  putStrLn ""
