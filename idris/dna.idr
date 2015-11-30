module dna
import list
import pair
import nat
import ite
import bool


data base = A | T | G | C

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G

basePair: base -> pair base base
basePair a = (mkPair a (complement_base a))

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand l = list.map complement_base l

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 l = list.map first l

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 l = list.map second l




complete: list base -> list (pair base base) 
complete nil = nil
complete l = list.map basePair l 

cbA: base -> nat
cbA A = (S O)
cbA _ = O

cbT: base -> nat
cbT T = (S O)
cbT _ = O

cbC: base -> nat
cbC C = (S O)
cbC _ = O

cbG: base -> nat
cbG G = (S O)
cbG _ = O

--countBasex counts the number of base "x" in the list base

countBaseA: list base -> nat
countBaseA nil = O
countBaseA l = list.foldr add O (list.map cbA l) 

countBaseT: list base -> nat
countBaseT nil = O
countBaseT l = list.foldr add O (list.map cbT l) 

countBaseG: list base -> nat
countBaseG nil = O
countBaseG l = list.foldr add O (list.map cbG l) 

countBaseC: list base -> nat
countBaseC nil = O
countBaseC l = list.foldr add O (list.map cbC l) 


