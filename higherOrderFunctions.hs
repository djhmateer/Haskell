-- functions are another type of value like int or string

-- Higher Order Functions
-- functions which accept functions as an argument
-- or return a function

-- pass3 takes an argument f, which is a function
-- and passes 3 to the function returning the result
pass3 f = f 3

add1 x = x + 1

-- returns 4.. add1 3 = 4
b = pass3 add1

-- compose is a higher order function
-- takes 2 functions f and g, and a value x
-- passes the value (g of x) to the function f
compose f g x = f (g x)
mult2 x = 2 * x

c = compose add1 mult2 4
--9  add1 (mult2 4)

always7 x = 7
d = always7 5
-- 7 :-)

-- Partial application
-- int foo(int x, int y, int x)
-- return x + y + y
-- foo_1_ = foo(1,2)
-- illegal in java

foo x y z = x + y + z
-- so foo 1_2 is just a function
foo_1_2 = foo 1 2

e = foo_1_2 3
-- returns 6

-- defines a value x and a function f
-- passes x to the function f
pass x f = f x
-- partially apply.. pass3' will be a function that
-- takes a single argument which is the last remaining 
-- argument of pass
pass3' = pass 3

--Operators and just functions
-- +,*..
-- to pass as a function just (+)

f = (+) 5 3
-- 8

-- pass operator to higher order fun
-- pass_3_4 takes an argument
pass_3_4 f = f 3 4
g = pass_3_4 (+)
-- 7

-- defining a new operator
-- 2 arguments to new operator are 2 pairs
-- (a,b) and (c,d)
-- patter match
(a,b) .+ (c,d) = (a+c, b+d)

-- Map
-- applies a function to every element in a list
h = map length ["hello", "abc", "1234"]
-- [5,3,4]

-- add 1 to every element in the list of numbers
i = map (1+) [1,3,5,7]
-- [2,6,4,8]

-- partially applying map function
-- only giving the funcion to use
double = map (2*)
j = double [2,3,4]
-- [4,6,8]

-- Filter
-- define a function
notNull xs = not (null xs)
k = filter notNull ["", "abc", "", "hello", ""]
-- ["abc","hello"]
-- 1:20 of 2:48 filter