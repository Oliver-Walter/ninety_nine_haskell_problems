-- Find the last-but-one (or second-last) element of a list.
myButLast :: [a] -> a

myButLast [] = error "empty list"
myButLast x = head (tail (reverse x))

myButLast' (x:xs)
    | null x = error "empty list"
    | null xs = error "single element list"
    | length xs == 1 = x
    | otherwise = myButLast' xs
