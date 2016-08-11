x <- seq(2,5, length.out=5)
# output: [1] 2.00 2.75 3.50 4.25 5.00

# Data Frame
data <- read.csv("/home/mldantas/documentos/dados.csv")

# Data Frame with decimal separation = "," and separation between rows ";"
data <- read.csv("/home/mldantas/documentos/dados.csv", dec=",", sep=";", header=TRUE)

# Read Header
head(data)

getwd()
# output: [1] "/home/mae5755.16"