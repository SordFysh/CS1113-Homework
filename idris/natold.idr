module natp

import bool
import pair

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
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
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = addp (mkPair n (S m))

multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (multp(mkPair n m )))

subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair n O) = n
subp (mkPair (S n) (S m)) = subp (mkPair n m)


exp: pair nat nat -> nat
exp (mkPair O n) = O
exp (mkPair m O) = (S O)
exp (mkPair m ( S O )) = m
exp (mkPair m (S n)) = multp (mkPair m ( exp ( mkPair m n)))

lep: pair nat nat -> bool
lep (mkPair O O) = true
lep (mkPair n O) = false
lep (mkPair O m) = true
lep (mkPair ( S n) ( S m)) = lep (mkPair n m)

eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair n O) = false
eqp (mkPair O m) = false
eqp (mkPair (S n) (S m)) = eqp (mkPair n m)

gtp: pair nat nat -> bool
gtp (mkPair O O) = false
gtp (mkPair n O) = true
gtp (mkPair O m) = false 
gtp (mkPair (S n) (S m)) = gtp (mkPair n m)

gep: pair nat nat -> bool
gep (mkPair O O) = true
gep (mkPair n O) = true
gep (mkPair O m) = false
gep (mkPair ( S n) ( S m)) = gep (mkPair n m)

ltp: pair nat nat -> bool
ltp (mkPair O O) = false
ltp (mkPair n O) = false
ltp (mkPair O m) = true
ltp (mkPair ( S n) ( S m)) = ltp (mkPair n m)












