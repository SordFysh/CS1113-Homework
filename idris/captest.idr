import cap
import pair
import bool
import list
import relation

teamAvPointsPerPlayer: pair Nat Nat
teamAvPointsPerPlayer = ave_rel roster iscap points

--expect mkPair 1935 4

teamPoints: Nat
teamPoints = sum_rel roster iscap points

--expect 1935

numberEuroPlayers: Nat
numberEuroPlayers = count_rel roster european

--expect 2

euroPlayersNames: String
euroPlayersNames = query2 roster european name (++) ""

--expect Alex OvechkinNiklas Backstrom

euroPlayerPoints: Nat
euroPlayerPoints = sum_rel roster european points

--expect 1480
