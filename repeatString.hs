repeatString str n =
  if n == 0
  then ""  -- base case, return the empty string
  else str ++ (repeatString str (n-1))
