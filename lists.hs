x = [1,2,3]
empty = []
y = 0 : x -- [0,1,2,3]   : is the cons operator
-- takes an element, and a list, and returns a new list added to the front

str = "abcde"

z = "hello " ++ "world"

-- a list has to have the same type
a = head[1,2,3] --1

b = tail[1,2,3] --2,3

c = head (tail [1,2,3]) -- 2

d = null [] -- True. checking if the list is empty

e = null [1,2] -- False.  The list isn't empty

-- argument nums is the list of numbers to be doubled
double nums = 
  if null nums -- base case of the recursion
  then [] 
  -- nums is not empty
  else (2 * (head nums)) : (double (tail nums))
  -- get first element of nums with head
  -- first element of new list should be double this
  -- cons operator to add to front of list
  -- take the rest of the list and call double again

f = double[1,2,3] -- returns [2,4,6]

removeOdd nums =
  if null nums -- base case of recursion
  then [] -- return empty list
  else
    if (mod (head nums) 2) == 0 -- even
    then (head nums) : (removeOdd (tail nums))
    -- if first element is even, include in output list
    else removeOdd (tail nums)
    -- if first element is odd, dont' include in output list

g = removeOdd[1,2,3,4,5,6,7,8] -- returns [2,4,6,8]

x = (1, "hello")
