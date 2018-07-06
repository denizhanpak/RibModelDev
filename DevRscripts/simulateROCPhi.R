#First we generate a random list of "true phi values"
numGenes <- 2000
sPhi <- 2
logPhiTrue <- c(rnorm(numGenes), 0, sPhi)
sEpsilon <- 0.4
distNoise <- c(rnorm(numGenes), 0, sEpsilon)
noiseOffset <- 5
logPhis <- logPhiTrue + distNoise + 5
