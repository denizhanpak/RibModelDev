library(seqinr)

genome <- read.fasta(file = "[input_file].fasta")
gene.idx <- sample(x = (1:length(genome)+1), size = 892, replace = FALSE) #Size was preset
gene.idx <- sort(gene.idx)
genome <- genome[gene.idx]

phi.vals <- read.table(file = "[corresponding_phi_values].csv", sep=",", header = T)[gene.idx, ]
write.table(file = "./[output_file_corresponding_phi].csv", quote = F, sep = ",", row.names = F, x = phi.vals)
write.fasta(sequences = genome, names = getName(genome), file.out = "./[output_file].fasta")

