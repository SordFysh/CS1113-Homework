module presidents

data president = Washington | Adams | Jefferson | Madison | Monroe 

data state = Virginia | Massachusets 

data presfact = mkPresfact president Nat state Nat Nat


||| this record records name, birth year, state of orgin, Year elected, and year died

washington : presfact
washington = mkPresfact Washington 1732 Virginia 1789 1799

adams : presfact
adams = mkPresfact Adams 1735 Massachusets 1797 1826

jefferson: presfact
jefferson = mkPresfact Jefferson 1743 Virginia 1801 1826

madison: presfact
madison = mkPresfact Madison 1751 Virginia 1809 1836

monroe: presfact
monroe = mkPresfact Monroe 1758 Virginia 1817 1831

name: presfact -> president
name (mkPresfact n b s e d) = n

born: presfact -> Nat
born (mkPresfact n b s e d ) = b

stateBornIn: presfact -> state
stateBornIn (mkPresfact n b s e d) = s

elected: presfact -> Nat
elected (mkPresfact n b s e d) = e

died: presfact -> Nat
died (mkPresfact n b s e d) = d




