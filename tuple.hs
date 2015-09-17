-- tuple with 2 different types - number and string
a = (1, "hello")

-- list of numbers
b = [1,2,3]

-- tuple containing a list
c = ("pi", 3.14159, [1,2,3], "four")

-- common technique to return multiple values from a fn
headAndLength list = (head list, length list)
-- headAndLength [1,2,3] returns (1,3)

-- first element of the tuple.. output is 1
d = fst(1, "hello")

-- second element of the tuple..output is "hello"
e = snd(1, "hello")