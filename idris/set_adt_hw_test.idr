import set_adt_hw

import bool
import option
import pair
import list
import nat
import eq
import serialize

-- imports needed for list-based implementation
import list
import ite

samplelist1: list nat
samplelist1 = ((S O)::(S (S O))::nil)

samplelist2: list nat
samplelist2 = ((S (S O))::(S (S (S (S O))))::nil)


empT: (eq a) => bool
empT = isEmpty (mkSet samplelist1)

--expect false

inT: (eq a) => set nat
inT = set_insert O (mkSet samplelist1)

--expect mkSet (O :: S O :: S (S O) :: nil)

set_remove_test_1:(eq a) => set nat
set_remove_test_1 = set_remove (S O) (mkSet (samplelist1))

--expect mkSet (S (S O) :: nil)

set_remove_test_2:(eq a) => set nat
set_remove_test_2 = set_remove (S O) (mkSet (nil))

--expect mkSet nil

card_test_1:(eq a) => nat
card_test_1 = set_cardinality (mkSet samplelist1)

--expect S (S O)

--card_test_2:(eq a) => nat
--card_test_2 = set_cardinality (mkSet nil)

memberT1: (eq a) => bool
memberT1 = set_member (S O) (mkSet (samplelist1))

--expect true

memberT2: (eq a) => bool
memberT2 = set_member (S (S (S (S (S (S (S O))))))) (mkSet (samplelist1))

--expect false

memberT3: (eq a) => bool
memberT3 = set_member (S (S (S (S (S (S (S O))))))) (mkSet (nil))

--expect false

unionT1: (eq a) => set nat
unionT1 = set_union (mkSet samplelist1) (mkSet samplelist2)

unionT2: (eq a) => set nat
unionT2 = set_union (mkSet samplelist1) (mkSet nil)

--expect mkSet (S O :: S (S O) :: nil)

intersectT1: (eq a) => set nat
intersectT1 = set_intersection (mkSet samplelist1) (mkSet samplelist2)

intersectT2: (eq a) => set nat
intersectT2 = set_intersection (mkSet samplelist1) (mkSet nil)

--expect mkSet nil

intersectT3: (eq a) => set nat
intersectT3 = set_intersection (mkSet nil) (mkSet nil)

--expect mkSet nil

difT1: (eq a) => set nat
difT1 = set_difference (mkSet samplelist1) (mkSet samplelist2)

difT2: (eq a) => set nat
difT2 = set_difference (mkSet nil) (mkSet samplelist2)

--expect mkSet nil


forallT1: (eq a) => bool
forallT1 = set_forall evenb (mkSet samplelist1)

--expect false

forallT2: (eq a) => bool
forallT2 = set_forall evenb (mkSet samplelist2)

--expect true

forallT3: (eq a) => bool
forallT3 = set_forall evenb (mkSet nil)

--expect false

existT1: (eq a) => bool
existT1 = set_exists evenb (mkSet samplelist1)

--expect false

existT2: (eq a) => bool
existT2 = set_exists evenb (mkSet samplelist2)

--expect true

existT3: (eq a) => bool
existT3 = set_exists evenb (mkSet nil)

--expect false

witT1: (eq a) => option nat
witT1 = set_witness oddb (mkSet samplelist1)

--expect some (S O)

witT2: (eq a) => option nat
witT2 = set_witness oddb (mkSet samplelist2)

--expect none

witT3: (eq a) => option nat
witT3 = set_witness oddb (mkSet nil)

--expect none

prodT1: (eq a) => set (pair nat nat)
prodT1 = set_product (mkSet samplelist1) (mkSet samplelist2)

--expect mkSet (mkPair (S O) (S (S O)) ::
      -- mkPair (S O) (S (S (S (S O)))) ::
      -- mkPair (S (S O)) (S (S O)) ::
      -- mkPair (S (S O)) (S (S (S (S O)))) :: nil) 
       
seqT1: (eq a) => bool
seqT1 = eql_set (mkSet samplelist1) (mkSet samplelist2)

--expect false

seqT2: (eq a) => bool
seqT2 = eql_set (mkSet samplelist1) (mkSet samplelist1)

--expect true

seqT3: (eq a) => bool
seqT3 = eql_set (mkSet nil) (mkSet samplelist2)

--expect false

tostriiiiingT: String
tostriiiiingT = set_toString (mkSet samplelist1)


--expect  "{[sZ,ssZ,]}"
