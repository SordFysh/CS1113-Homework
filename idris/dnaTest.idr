import dna

complement_baseTestA: base
complement_baseTestA = complement_base A

 --expect T 
 
complement_baseTestT: base
complement_baseTestT = complement_base T

 --expect A
 
 
complement_baseTestG: base
complement_baseTestG = complement_base G

 --expect C
 
 
complement_baseTestC: base
complement_baseTestC = complement_base C

 --expect G
