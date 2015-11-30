module nat

import bool
import eq
import serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false

isZero: nat -> bool
isZero O = true
isZero _ = false

||| Returns the successor of any given nat

succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not(evenb n)


||| given a pair of natural numbers, return its sum

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat 
mult  O m = O
mult n O = O
mult  (S n) m = add  m ( mult n m )

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

fib: nat -> nat
fib O = O
fib n = add  n  (fib ( pred  n))

fact: nat -> nat 
fact O = (S O)
fact n =  mult  n (fact (pred n))



exp: nat -> nat -> nat
exp  O n = O
exp  m O = S O
exp  m ( S O ) = m
exp  m (S n) = mult m ( exp m n)

le: nat -> nat -> bool
le  O O = true
le  n O = false
le  O m = true
le  ( S n) ( S m) = le  n m

eql_nat: nat -> nat -> bool
eql_nat  O O = true
eql_nat  (S n) O = false
eql_nat  O (S m) = false
eql_nat  (S n) (S m) = eql_nat n m

gt: nat->  nat -> bool
gt  O O = false
gt  n O = true
gt  O m = false 
gt  (S n) (S m) = gt  n m

ge: nat -> nat -> bool
ge  O O = true
ge n O = true
ge  O m = false
ge ( S n) ( S m) = ge  n m

lt: nat -> nat -> bool
lt  O O = false
lt  n O = false
lt  O m = true
lt  ( S n) ( S m) = lt  n m

instance eq nat where
  eql n1 n2 = eql_nat n1 n2
  
instance serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)



