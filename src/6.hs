-- Find out whether a list is a palindrome.
isPalindrome :: Eq a => [a] -> Bool

isPalindrome [] = True
isPalindrome [x] = True
isPalindrome x = (head x == last x) && isPalindrome (tail (init x))

isPalindrome' x = x == reverse x
