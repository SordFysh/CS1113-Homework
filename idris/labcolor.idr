module labcolor

import bool
import pair 

data colors = red | green | blue | yellow | cyan | magenta

compliment: colors -> colors
compliment red = cyan
compliment yellow = blue
compliment green = magenta
compliment cyan = red
compliment blue = yellow
compliment magenta = green


additive: colors -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: colors -> bool
subtractive cyan = true
subtractive magenta = true
subtractive yellow = true
subtractive _ = false
 
subtractive': colors -> bool
subtractive' = (not . additive) 
 
complements: pair colors colors -> bool
complements (mkPair red cyan) = true
complements (mkPair yellow blue) = true 
complements (mkPair green magenta) = true 
complements (mkPair cyan red) = true 
complements (mkPair blue yellow) = true 
complements (mkPair magenta green) = true 
complements (mkPair _ _) = false

mixPair: pair colors colors -> colors
mixPair (mkPair yellow cyan) = green 
mixPair (mkPair yellow magenta) = red
mixPair (mkPair magenta cyan) = blue
mixPair (mkPair magenta yellow) = red
mixPair (mkPair cyan yellow) = green
mixPair (mkPair cyan magenta) = blue

