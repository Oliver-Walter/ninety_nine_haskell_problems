-- Find the K'th element of a list. (1 indexed)
myElemAt :: Int -> [a] -> a

myElemAt k x
    | null x = error "empty list"
    | (k > length x) || (k < 1) = error "index out of bounds"
    | k == 1 = head x
    | otherwise = myElemAt (k - 1) (tail x)
