-- Find the last element of a list.
myLast :: [a] -> a

myLast [] = error "empty list"
myLast [x] = x
myLast x = myLast (tail x)

myLast' [] = error "empty list"
myLast' [x] = x
myLast' (x:xs) = myLast xs

-- myLast'' x =
--     if length x == 0
--     then error "empty list"
--     else
--         if length x == 1
--         then x[0]
--         else myLast'' x  

myLast'' x
    | null x = error "empty list"
    | length x == 1 = head x
    | otherwise = myLast'' (tail x)

myLast''' (x:xs)
    | null x = error "empty list"
    | null xs = x
    | otherwise = myLast''' xs
