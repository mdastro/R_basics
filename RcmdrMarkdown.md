


```r
load("/home/mae5755.16/Downloads/aula11/EX1_dois_fatores.RData")
```

```
## Error: não é possível ler espaço de trabalho versão 168430090 escrito pelo R 25697.116.97;  R 11878.114.97 ou mais novo necessário
```



```r
load("/home/mae5755.16/Downloads/aula11/script_anova_dois_fatores.R")
```

```
## Error: número mágico do arquivo de restauração inválido (arquivo pode estar corrompido) -- nenhum dado carregado
```


```r
load("/home/mae5755.16/Downloads/aula11/EX1_dois_fatores.RData")
```

```
## Error: não é possível ler espaço de trabalho versão 168430090 escrito pelo R 25697.116.97;  R 11878.114.97 ou mais novo necessário
```



```r
Dataset <- readXL("/home/mae5755.16/Downloads/aula11/Espirometria.xlsx", rownames=FALSE, header=TRUE, na="", 
  sheet="Espirometria_curso", stringsAsFactors=TRUE)
```


```r
Dataset <- within(Dataset, {
  exposicao <- as.factor(exposicao)
})
```


```r
with(Dataset, tapply(cvfpred, exposicao, median, na.rm=TRUE))
```

```
##        0        1        2 
## 94.01960 94.93906 83.50338
```

```r
kruskal.test(cvfpred ~ exposicao, data=Dataset)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  cvfpred by exposicao
## Kruskal-Wallis chi-squared = 5.1472, df = 2, p-value = 0.07626
```


```r
library(mvtnorm, pos=14)
```



```r
library(survival, pos=14)
```



```r
library(MASS, pos=14)
```



```r
library(TH.data, pos=14)
```



```r
library(multcomp, pos=14)
```



```r
library(abind, pos=19)
```



```r
AnovaModel.1 <- aov(temtraba ~ exposicao, data=Dataset)
summary(AnovaModel.1)
```

```
##             Df Sum Sq Mean Sq F value Pr(>F)  
## exposicao    2    481  240.63   3.331 0.0398 *
## Residuals   98   7079   72.23                 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
with(Dataset, numSummary(temtraba, groups=exposicao, statistics=c("mean", "sd")))
```

```
##       mean        sd data:n
## 0 16.46667  7.781541     15
## 1 10.28618  8.210837     76
## 2 11.85500 11.424838     10
```


```r
with(Dataset, tapply(temtraba, exposicao, median, na.rm=TRUE))
```

```
##    0    1    2 
## 16.0  8.0  9.5
```

```r
kruskal.test(temtraba ~ exposicao, data=Dataset)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  temtraba by exposicao
## Kruskal-Wallis chi-squared = 7.7424, df = 2, p-value = 0.02083
```


```r
load("/home/mae5755.16/Downloads/aula11/PulsacaoUCLAD1.RData")
```


```r
Dataset <- readXL("/home/mae5755.16/Downloads/aula11/Espirometria.xlsx", rownames=FALSE, header=TRUE, na="", 
  sheet="Espirometria_curso", stringsAsFactors=TRUE)
```



```r
Dataset <- within(Dataset, {
  exposicao <- as.factor(exposicao)
})
```



```r
with(Dataset, tapply(cvfpred, exposicao, median, na.rm=TRUE))
```

```
##        0        1        2 
## 94.01960 94.93906 83.50338
```



```r
kruskal.test(cvfpred ~ exposicao, data=Dataset)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  cvfpred by exposicao
## Kruskal-Wallis chi-squared = 5.1472, df = 2, p-value = 0.07626
```



```r
library(mvtnorm, pos=14)
```



```r
library(survival, pos=14)
```



```r
library(MASS, pos=14)
```



```r
library(TH.data, pos=14)
```



```r
library(multcomp, pos=14)
```



```r
library(abind, pos=19)
```



```r
AnovaModel.1 <- aov(temtraba ~ exposicao, data=Dataset)
```



```r
summary(AnovaModel.1)
```

```
##             Df Sum Sq Mean Sq F value Pr(>F)  
## exposicao    2    481  240.63   3.331 0.0398 *
## Residuals   98   7079   72.23                 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```



```r
with(Dataset, numSummary(temtraba, groups=exposicao, statistics=c("mean", "sd")))
```

```
##       mean        sd data:n
## 0 16.46667  7.781541     15
## 1 10.28618  8.210837     76
## 2 11.85500 11.424838     10
```



```r
with(Dataset, tapply(temtraba, exposicao, median, na.rm=TRUE))
```

```
##    0    1    2 
## 16.0  8.0  9.5
```



```r
kruskal.test(temtraba ~ exposicao, data=Dataset)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  temtraba by exposicao
## Kruskal-Wallis chi-squared = 7.7424, df = 2, p-value = 0.02083
```



```r
load("/home/mae5755.16/Downloads/aula11/PulsacaoUCLAD1.RData")
```



```r
Dataset <- within(Dataset, {
  exposicao <- as.factor(exposicao)
})
```



```r
with(Dataset, tapply(cvfpred, exposicao, median, na.rm=TRUE))
```

```
##        0        1        2 
## 94.01960 94.93906 83.50338
```



```r
kruskal.test(cvfpred ~ exposicao, data=Dataset)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  cvfpred by exposicao
## Kruskal-Wallis chi-squared = 5.1472, df = 2, p-value = 0.07626
```



```r
library(mvtnorm, pos=14)
```



```r
library(survival, pos=14)
```



```r
library(MASS, pos=14)
```



```r
library(TH.data, pos=14)
```



```r
library(multcomp, pos=14)
```



```r
library(abind, pos=19)
```



```r
AnovaModel.1 <- aov(temtraba ~ exposicao, data=Dataset)
```



```r
with(Dataset, numSummary(temtraba, groups=exposicao, statistics=c("mean", "sd")))
```

```
##       mean        sd data:n
## 0 16.46667  7.781541     15
## 1 10.28618  8.210837     76
## 2 11.85500 11.424838     10
```



```r
with(Dataset, tapply(temtraba, exposicao, median, na.rm=TRUE))
```

```
##    0    1    2 
## 16.0  8.0  9.5
```



```r
kruskal.test(temtraba ~ exposicao, data=Dataset)
```

```
## 
## 	Kruskal-Wallis rank sum test
## 
## data:  temtraba by exposicao
## Kruskal-Wallis chi-squared = 7.7424, df = 2, p-value = 0.02083
```


```r
friedman.test (Pulsacao ~ Tempo | Ind, data = ColesterolUCLAD1)
```

```
## 
## 	Friedman rank sum test
## 
## data:  Pulsacao and Tempo and Ind
## Friedman chi-squared = 13.107, df = 2, p-value = 0.001425
```



