-- Find the number of elements in a list.
myLength :: [a] -> Int

myLength x
    | null x = 0
    | otherwise = 1 + myLength (tail x)

myLength' x = sum (map (const 1) x)
