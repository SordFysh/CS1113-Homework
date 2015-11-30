module person

import bool
import list
import pair
import relation
import nat

record Person where
    constructor MkPerson
    name : String
    age : Nat
    gender: bool

-- An example value of type Person
Tom: Person
Tom = MkPerson "Tommy" 3 false

Beth: Person
Beth = MkPerson "Beth" 23 true

Terry: Person
Terry = MkPerson "Terry" 41 false

Margret : Person
Margret = MkPerson "Margret" 94 true

people: list Person
people = (Tom::Beth::Terry::Margret::nil)



count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = query2 rel sel countOne plus 0


