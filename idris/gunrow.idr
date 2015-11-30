module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA



||| A record of this type represents a country and the |||death rate per 10,000,000 by gun for homocides, |||suicides, unintentional, other


data gunrow = mkGunrow country Nat Nat Nat Nat

argentina: gunrow
argentina = mkGunrow Argentina  190 279 64 362

australia: gunrow
australia = mkGunrow Australia 11 62 5 8

austria : gunrow
austria = mkGunrow Austria 18 268 1 8

honduras : gunrow
honduras = mkGunrow Honduras 6480 0 0 0 

murica : gunrow
murica = mkGunrow USA 355 670 16 9 

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

homocidesPer10M: gunrow -> Nat
homocidesPer10M (mkGunrow c h s u o) = h

suicidePer10M : gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s


unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u


otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

listArgentina: list gunrow
listArgentina = argentina :: nil 

listAustria: list gunrow
listAustria = austria :: nil


listAustralia: list gunrow
listAustralia =  australia :: nil

listHonduras : list gunrow
listHonduras = honduras :: nil

listUSA : list gunrow
listUSA =  murica ::  nil
 
