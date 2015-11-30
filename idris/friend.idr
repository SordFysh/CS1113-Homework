module friend

import bool

data friend = mkFriend bool String Nat

f1: friend 
f1 = mkFriend true "Ovi" 8

f2: friend
f2 = true "Holtby" 70

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getTrust: friend -> bool
getTrust (mkFriend b s n) = b
