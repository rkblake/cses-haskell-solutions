import System.Environment

repetitions :: String -> Int -> Char -> Int
repetitions "" accum char = accum
repetitions text accum char =
  if head text == char then
    repetitions (tail text) (accum+1) (head text)
  else
    repetitions (tail text) 0 (head text)

main = do
  args <- getArgs
  print $ repetitions (head args) 0 ''
