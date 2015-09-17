-- first element of a tuple
fst' (a,b) = a
f = fst' (2,3)

-- second element of a tuple
snd' (a,b) = b
g = snd' (3,4)

-- how the null function which tests whether a list is 
-- empty 
-- list matches the empty list pattern
null' [] = True
-- list is non empty..add some value x to the front
-- of some list xs **why does this look like a tuple**
-- cons operator
null' (x : xs) = False
-- list contains something
h = null' [1,2] 
-- list contains nothing
i = null' []

head' (x:xs) = x
head' [] = error "head of empty list"

j = head' [1,2]
k = head' []

double nums =
  if null nums
  then []
  else (2 * (head nums)) : (double (tail nums))

l = double [1,2,3]

double' [] = []
-- first element is x, remaining element is list xs
-- first element of new list should be 2 * x
-- remaining elements are computed recursively
double' (x : xs) = (2 * x) : (double xs)
m = double' [1,2,3,4]


-- guards of function argument
-- (can look at values in the data)
pow2 n
  -- guarding boolean expression
  | n == 0    = 1
  | otherwise = 2 * (pow2 (n-1))

o = pow2(2)

removeOdd [] = []
-- uses guard to select the even
removeOdd (x : xs)
  | mod x 2 == 0  = x : (removeOdd xs)
  | otherwise     = removeOdd xs

-- returns [2,4,6]
p = removeOdd [1,2,3,4,5,6]

-- case expressions.. inside the function
double'' nums = case nums of
  -- pattern matching
  []  -> []
  (x : xs) -> (2 * x) : (double xs)

q = double'' [1,2,3]

-- pattern match on the result of a function
-- this function just returns a list
anyEven nums = case (removeOdd nums) of
  []  -> False
  (x : xs) -> True
r = anyEven [1,3,5]
s = anyEven [1,2,4,6,8]

-- let 
fancySeven =
  let a = 3
  -- in a subexpress where the bound a can be used
  in (2 * a) + 1

t = fancySeven

fancyNine =
  let   x = 4
        y = 5
  in x + y

u = fancyNine

numEven nums =
  -- evenNums is a list just of the even nums
  let evenNums = removeOdd nums
  -- return the length of the list
  in length evenNums
-- returns 2
v = numEven [1,2,3,4]

-- returns 3
w = numEven [1,2,3,4,5,6]

-- where
fancySeven' = (2 * a) + 1
  where a = 3

x = fancySeven'

-- whitespace
-- don't use tabs!!!!

pairMax p = max (fst p)
-- (snd   needs to start further right than max
                (snd p)
y = pairMax (5,6)

-- lazy function evaluation!
-- in java/C#
-- foo(alpha(1), beta(2))
-- we know order of execution
-- alpha(1) and beta(2) are computer
-- then resulting values are passed to foo

-- lazy infinite lists
intsFrom n = n : (intsFrom (n+1))
-- all possible integers from 1
ints = intsFrom 1

-- returns false (as the infinite list is not null)
aa = null ints

-- returns 1
ab = head ints

-- takes first 10 elements of the list
ac = take 10 ints

evenInts = removeOdd ints
ad = take 10 evenInts