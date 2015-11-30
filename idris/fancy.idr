module foldr

import list
import nat



fancyadd: list nat -> nat
fancyadd nil = O 
fancyadd (h::t) = add h (fancyadd t)


fancymult: list nat -> nat
fancymult nil = O 
fancymult (h::t) = mult h (fancymult t)

--binary operator (check)
--identity element (check)
--type of list element (check)
--return parameter (check)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)
