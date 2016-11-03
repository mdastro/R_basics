
load("/home/mae5755.16/Downloads/Ex1aula12.csv")
Dataset <- read.table("/home/mae5755.16/Downloads/Ex1aula12.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)
Dataset <- read.table("/home/mae5755.16/Downloads/Ex1aula12.csv", header=TRUE, sep=",", na.strings="NA", dec=",", 
  strip.white=TRUE)
summary(Dataset)
with(Dataset, Dotplot(Taxa, by=Peso, bin=FALSE))
with(Dataset, Dotplot(Peso, by=Taxa, bin=FALSE))
editDataset(Dataset)
Dataset <- read.table("/home/mae5755.16/Downloads/Ex1aula12.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
  strip.white=TRUE)
RegModel.1 <- lm(Taxa~Peso, data=Dataset)
summary(RegModel.1)
summary(Dataset)
with(Dataset, Dotplot(Peso, bin=FALSE))
with(Dataset, Dotplot(Taxa, bin=FALSE))
scatterplot(Taxa~Peso, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, ellipse=FALSE, 
  levels=c(.5, .9), data=Dataset)
RegModel.2 <- lm(Taxa~Peso, data=Dataset)
summary(RegModel.2)
stripchart(Dataset$Peso, method="stack", xlab="Peso")
scatterplot(Taxa~Peso, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, ellipse=FALSE, 
  levels=c(.5, .9), data=Dataset)
oldpar <- par(oma=c(0,0,3,0), mfrow=c(2,2))
plot(RegModel.2)
par(oldpar)
library(lattice, pos=14)
library(grid, pos=14)
library(colorspace, pos=14)
library(effects, pos=14)
with(Dataset, cor.test(Peso, Taxa, alternative="two.sided", method="pearson"))
with(Dataset, cor.test(Peso, Taxa, alternative="two.sided", method="spearman"))
RegModel.3 <- lm(Taxa~Peso, data=Dataset)
summary(RegModel.3)
load("/home/mae5755.16/Downloads/Tetrahymena.RData")
scatterplot(Concentracao~Diametro, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, ellipse=FALSE, 
  levels=c(.5, .9), data=Tetrahymena)
scatterplot(Diametro~Concentracao, log="x", reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, 
  ellipse=FALSE, levels=c(.5, .9), data=Tetrahymena)
scatterplot(Diametro~Concentracao, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, ellipse=FALSE, 
  levels=c(.5, .9), data=Tetrahymena)
scatterplot(Diametro~Concentracao | Glicose, reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, span=0.5, 
  ellipse=FALSE, levels=c(.5, .9), by.groups=TRUE, data=Tetrahymena)
scatterplot(Diametro~Concentracao | Glicose, log="x", reg.line=FALSE, smooth=FALSE, spread=FALSE, boxplots=FALSE, 
  span=0.5, ellipse=FALSE, levels=c(.5, .9), by.groups=TRUE, data=Tetrahymena)
dados1 <- subset(Tetrahymena, subset=Glicose=='s')
dados1 <- subset(Tetrahymena, subset=Glicose=='s')
comglicose <- subset(Tetrahymena, subset=Glicose=='s')

