import bool
import serialize



ttand : bool
ttand = and true true

--expect true

tfand : bool
tfand = and true false

--expect false

ftand : bool
ftand = and false true

--expect false

ffand : bool
ffand = and false false

--expect false





ttor : bool
ttor = or true true

--expect true

tfor : bool
tfor = or true false

--expect true

ftor: bool
ftor = or false true

--expect true

ffor : bool
ffor = or false false

--expect false







ttxor : bool
ttxor = xor true true

--expect false

tfxor : bool
tfxor = xor  true false

--expect true

ftxor : bool
ftxor = xor  false true

--expect true

ffxor: bool
ffxor = xor false false

--expect false






ttnand : bool
ttnand = nand true true

--expect false

tfnand : bool
tfnand = nand true false

--expect true

ftnand : bool
ftnand = nand false true

--expect true

ffnand : bool
ffnand = nand false false

--expect true

s: String
s = toString true













