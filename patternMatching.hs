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
null' (x : xs) = False
-- list contains something
h = null' [1,2] 
-- list contains nothing
i = null' []

