import list
import nat
import bool
import eq
import serialize


lengthtest: nat
lengthtest = length ((S O) :: (S (S O)) :: nil)

--expect S (S O)




appendtest1: list nat
appendtest1 =  (++) ((S O) :: (S (S O)) ::  nil) ((O) :: (S O) :: nil)

--expect S O :: S (S O) :: O :: S O :: nil


appendtest2 : list nat 
appendtest2 = (++) nil ((S O) :: (O) :: nil)

--expect S O :: O :: nil


s: String
s = toString appendtest1
