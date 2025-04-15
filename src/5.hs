-- Reverse a list.
myReverse :: [a] -> [a]

myReverse [] = []
myReverse [x] = [x]
myReverse [x, y] = [y, x]
myReverse x = [last x] ++ myReverse (tail (init x)) ++ [head x]
