x <- seq(2,5, length.out=5)
# output: [1] 2.00 2.75 3.50 4.25 5.00

# Data Frame
data <- read.csv("/home/mldantas/documentos/dados.csv")

# Data Frame with decimal separation = "," and separation between rows ";"
data <- read.csv("/home/mldantas/documentos/dados.csv", dec=",", sep=";", header=TRUE)

# Label example:
peso <- c(75,60,75,80)
sexo <- c(1,2,2,1)
sexo <- factor(sexo, levels = c(1,2), label=c("Masculino", "Feminino")
dados <- data.frame(peso=peso, sexo=sexo)
dados
#   peso sexo
# 1   75    1
# 2   60    2
# 3   75    2
# 4   80    1

summary(dados)
#       peso            sexo    
# Min.   :60.00   Min.   :1.0  
# 1st Qu.:71.25   1st Qu.:1.0  
# Median :75.00   Median :1.5  
# Mean   :72.50   Mean   :1.5  
# 3rd Qu.:76.25   3rd Qu.:2.0  
# Max.   :80.00   Max.   :2.0

dim(dados)
# [1] 4 2
nrow(dados)
# [1] 4
ncol(dados)
# [1] 2
names(dados)
# [1] "peso" "sexo"

subset(dados, peso<=75)
#   peso sexo
# 1   75    1
# 2   60    2
# 3   75    2


# Read Header
head(data)

getwd()
# output: [1] "/home/mae5755.16"
