
Dataset <- read.table("/home/mae5755.16/Downloads/tabela.csv", header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
summary(Dataset)
library(abind, pos=14)
library(e1071, pos=15)
numSummary(Dataset[,"concentracao"], groups=Dataset$local, statistics=c("mean", "sd", "IQR", "quantiles"), 
  quantiles=c(0,.25,.5,.75,1))
Boxplot( ~ concentracao, data=Dataset, id.method="y")
Boxplot(concentracao~local, data=Dataset, id.method="y")
t.test(concentracao~local, alternative='two.sided', conf.level=.95, var.equal=FALSE, data=Dataset)
t.test(concentracao~local, alternative='two.sided', conf.level=.95, var.equal=TRUE, data=Dataset)
with(Dataset, qqPlot(concentracao, dist="norm", id.method="y", id.n=2, labels=rownames(Dataset)))
editDataset(Dataset)
editDataset(Dataset)
editDataset(Dataset)
load("/home/mae5755.16/Downloads/a.csv")
grupo_a <- read.table("/home/mae5755.16/Downloads/a.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)

grupo_b <- read.table("/home/mae5755.16/Downloads/b.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)
with(grupo_a, qqPlot(concentracao, dist="norm", id.method="y", id.n=2, labels=rownames(grupo_a)))
with(grupo_b, qqPlot(concentracao, dist="norm", id.method="y", id.n=2, labels=rownames(grupo_b)))
dev.print(pdf, file="/home/mae5755.16/Downloads/grafico1.pdf", width=7, height=7, pointsize=12)

