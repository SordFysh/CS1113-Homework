-- imports needed for specification
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

data set: (a: Type) -> Type
data set a = mkSet (list a)

emptySet: set a
emptySet = (mkSet nil)


isEmpty: (s: set a) -> bool
isEmpty (mkSet nil) = true
isEmpty _ = false


instance (eq a) => eq (set a) where
  eql s1 s2 = set_eql s1 s2

instance (serialize a) => serialize (set a) where
  toString s = set_toString s

-- Return the set, s union {v}
set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))

set_remove: (eq a) => (v: a) -> (s: set a) -> set a


notAMember: (eq a) => (v: a) -> list a -> nat
notAMember v nil = (O)
notAMember v (h::t) = ite (eql v h)
                      (S O)
                      (notAMember v t)


nextStep: list a -> list nat
nextStep nil = nil
nextStep (h::t)  = (notAMember h) :: (nextStep t)

list_remove: (eq a) => (v: a) -> (l: list a) -> list a
list_remove v nil = nil
list_remove v l = filter evenb (nextStep (l))

--set_remove: (eq a) => (v: a) -> (s: set a) -> set a
-- Return the set, s - {v}
--set_remove v (mkSet l) = mkSet (list_remove v l)


-- Return the number of elements in s
set_cardinality: (s: set a) -> nat



-- If v is in s return true, otherwise false
set_member: (eq a) => (v: a) -> (s: set a) -> bool


-- Return union of s1 and s2
set_union: (eq a) => (s1: set a) -> (s2: set a) -> set a


-- Return the intersection of s1 and s2
set_intersection: (eq a) => (s1: set a) -> (s2: set a) -> set a


-- Return the set difference, s1 minus s2
set_difference: (eq a) => (s1: set a) -> (s2: set a) -> set a


-- Return true p is true for every v in s, otherwise false
set_forall: (p: a -> bool) -> (s: set a) -> bool


-- Return true if p is true for some v in s, otherwise else false
set_exists: (p: a -> bool) -> (s: set a) -> bool


-- If (set_exists p s), return (some v) such that (p v) is true, else
-- return none. We need to return an option because there might not be
-- an element in s with property p.  If there is such an element, we
-- call it a "witness to the property p."
set_witness: (p: a -> bool) -> (s: set a) -> option a


-- Return the cartesian product of s1 and s2. That is, return the
-- set of all pairs whose first element is taken from s1 and whose
-- second element is taken from s2. For example, the product of the
-- sets {1, 2} and {a, b} is { (1, a), (1, b), (2, a), (2, b) }.
set_product: (s1: set a) -> (s2: set b) -> set (pair a b)


-- Extra credit: Return the set of all sets of elements of s.
-- For example, the powerset of {1, 2, 3} is the following set:
-- { {}, {1}, {2}, {3}, {1, 2}, {1, 3}, {2, 3}, {1, 2, 3} }. The
-- cardinality of the powerset of a set of cardinality n is 2^n.
set_powerset: (s: set a) -> set (set a)


-- return true if s1 and s2 are equal, else false
set_eql: (eq a) => (s1: set a) -> (s2: set a) -> bool


-- Return a string representation of s
set_toString: (serialize a) => set a -> String

