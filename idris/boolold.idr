-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module boolold

import pair

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

andp: pair bool bool -> bool
andp (mkPair true true) = true
andp (mkPair a b) = false

orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair a b) = true

nandp: pair bool bool -> bool
nandp (mkPair a b) = not (andp (mkPair a b))

xorp: pair bool bool -> bool
xorp (mkPair true true) = false
xorp (mkPair false false) = false 
xorp (mkPair a b ) = true


--Exam Problem 2. There are 16 possible ways to fill in the result
  --column for a truth table for a binary Boolean function, and there
  --are thus exactly 16 such functions, and no more.--
  
 

pand: bool -> (bool -> bool)
pand true = id_bool
pand false = constFalse 

por: bool -> bool -> bool
por true = constTrue
por false = id_bool

pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

pnand : bool -> bool -> bool
pnand true = not
pnand false = constTrue

t: bool
t = true

f: bool
f = false
