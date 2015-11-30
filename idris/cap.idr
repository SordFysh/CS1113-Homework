module cap

import bool
import list
import relation
import pair

||| A record type that is equivalent to:
||| (data cap = mkCap String String nat bool)
||| but where we give names to fields.
||| A Player for the Washington Capitals (cap) has a name, a nickname, a |||number, whether or not they have been an Olympian, whether or not they are european, the number of games they have played , their career point total, and wheter or not they are a cap still 

record cap where
    constructor mkCap
    name : String
    alias : String
    jersey : Nat
    olympian : bool
    european : bool
    points : Nat
    games : Nat
    iscap: bool

Ovechkin: cap
Ovechkin = mkCap "Alex Ovechkin" "The Gr8 8" 8 true true 901 764 true

Backstrom: cap
Backstrom = mkCap "Niklas Backstrom" "Backie" 19 true true 579 577 true

Oshie: cap
Oshie = mkCap "T.J Oshie" "T.J Socci" 77 true false 448 315 true

Holtby: cap
Holtby = mkCap "Braden Holtby" "Holtbeast" 70 false false 7 183 true

roster: list cap
roster = (Ovechkin::Backstrom::Oshie::Holtby::nil)

getName: cap -> String
getName (mkCap n a j o e g p i ) = n

setName: cap -> String -> cap
setName p n = record { name = n } p

setAlias: cap -> String -> cap
setAlias p a = record { alias = a} p

setJersey: cap -> Nat -> cap
setJersey p j = record { jersey = j} p

setOlympian: cap -> bool -> cap
setOlympian p o = record {olympian = o} p

setEuropean: cap -> bool -> cap
setEuropean p e = record {european = e} p

setPoints: cap -> Nat -> cap
setPoints p x = record {points = x} p

setGames: cap -> Nat -> cap
setGames p g = record {games = g} p

setIscap: cap -> bool -> cap
setIscap p i = record {iscap = i} p



