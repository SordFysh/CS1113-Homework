module love

import pair

data name = mary | maurice

whoLovesWho : name -> name
whoLovesWho _ = maurice

p1: pair name name
p1 = mkPair mary maurice

p2: pair name name
p2 = mkPair maurice maurice

