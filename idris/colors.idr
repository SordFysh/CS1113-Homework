module colors

import pair
import bool

data primary = red | green | blue

data mixed =  yellow | magenta | cyan

additive: pair primary primary -> mixed
additive (mkPair red blue) = magenta
additive (mkPair red green) = yellow
additive (mkPair green blue) = cyan


complements: pair primary primary -> bool
complements additive = true
complements _ = false
