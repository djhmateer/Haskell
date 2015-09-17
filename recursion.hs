--pow2 n =
--  if n == 0  -- the base case of the recursion
--  then 1 
--  else 2 * (pow2 (n-1))


--static int Pow2(int n)
--{
--    var x = 1;
--    for (var i = 0; i < n; i++)
--        x *= 2;
--    return x;
--}

--pow2 n = pow2loop n 1 0
--pow2loop n x i =  -- x = 1 (the main variable which will be returned), i = 0
--  if i <n
--  then pow2loop n (x*2) (i+1)  -- x * 2 is the main part of the 'loop'
--  else x

repeatString str n =
  if n == 0
  then ""  -- base case, return the empty string
  else str ++ (repeatString str (n-1))

--strRepeat n str = strRepeatLoop n str 1
--strRepeatLoop n str i =  
--  if i <n
--  then str ++ strRepeatLoop n (str) (i+1)  
--  else str
