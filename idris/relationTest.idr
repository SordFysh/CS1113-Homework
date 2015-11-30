import relation
import cap
import list
import bool
import pair

query2Test: String
query2Test = query2 roster olympian alias (++) ""

--expect "The Gr8 8BackieT.J Socci"

countTest: Nat
countTest = count_rel roster olympian

--expect 3

sumTest: Nat
sumTest = sum_rel roster olympian jersey

--expect 104

aveTest: pair Nat Nat
aveTest = ave_rel roster olympian jersey

--expect mkPair 104 3

