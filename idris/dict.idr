import set
import list
import pair
import bool
import nat
import eq
import ite

data dict k v =  mkSet (list (pair k v))

dictrem: k -> dict k v -> dict k v

pairdict: k -> list (pair k v) -> list (pair k v)

keqlpair:(eq k) => k -> pair k v -> bool 
keqlpair k (mkPair k1 v1) = ite (eql k (first(mkPair k1 v1))) (true) (false)

dictadd: k -> v -> dict k v 
dictadd k v = mkSet ((mkPair k v) :: nil)


dictoverride: (eq k, eq (pair k v)) => k -> v -> dict k v -> dict k v 


