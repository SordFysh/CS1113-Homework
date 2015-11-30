module example

data throw =  rock | paper | scissors

winningMoveAgainst : throw -> throw
winningMoveAgainst rock = paper
winningMoveAgainst paper = scissors
winningMoveAgainst scissors = rock
