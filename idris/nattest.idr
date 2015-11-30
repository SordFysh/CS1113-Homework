import nat 
import serialize
import bool

addtest: nat
addtest = add (S O) (S (S (S O)))

--expect (S (S (S (S O))))



multtest: nat
multtest = mult (S (S O)) (S (S (S O)))

--expect (S (S (S (S (S (S O))))))



subtest: nat
subtest = sub (S (S (S (S O)))) (S (S O))

--expect (S (S O))




exptest: nat 
exptest = exp (S (S O)) (S (S (S O)))

--expect (S (S (S (S (S (S (S (S O))))))))




letest1: bool
letest1 =le (S O) O

--expect false



letest2: bool
letest2 = le (S O) (S O)

--expect true



letest3: bool
letest3 = le  O (S O) 

--expect true



eqtest1: bool
eqtest1 = eq ((S O) O)

--expect false



eqtest2: bool
eqtest2 = eq ((S O) (S O))

--expect true



eqtest3: bool
eqtest3 = eq  (O (S O)) 

--expect false



gttest1: bool
gttest1 =gt (S O) O

--expect true



gttest2: bool
gttest2 = gt (S O) (S O)

--expect false



gttest3: bool
gttest3 = gt  O (S O) 

--expect false




getest1: bool
getest1 =ge (S O) O

--expect true



getest2: bool
getest2 = ge (S O) (S O)

--expect true



getest3: bool
getest3 = ge  O (S O) 

--expect false



lttest1: bool
lttest1 =lt (S O) O

--expect false



lttest2: bool
lttest2 = lt (S O) (S O)

--expect false



lttest3: bool
lttest3 = lt  O (S O)

--expect true

facttest: nat
facttest = fact  (S (S (S O)))

--expect (S (S (S (S (S (S O))))))


s: String
s = toString (S O)
