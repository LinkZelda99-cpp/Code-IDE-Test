main :: IO ()
main = do
  let values = [3, 1, 4, 1, 5, 9]
  putStrLn "Hello from Haskell"
  print (sum values)
