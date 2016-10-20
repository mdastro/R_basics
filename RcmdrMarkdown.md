


```r
load("/home/mae5755.16/Downloads/Crisantemo2.RData")
```

```
## Error: não é possível ler espaço de trabalho versão 172192361 escrito pelo R 29537.110.116;  R 25965.111.10 ou mais novo necessário
```



```r
load("/home/mae5755.16/Downloads/Crisantemo2(1).RData")
```


```r
summary(Crisantemo)
```

```
##  Concentracao  Crescimento   
##  50 :10       Min.   :10.00  
##  100:10       1st Qu.:14.15  
##  200:10       Median :17.50  
##  400:10       Mean   :18.28  
##               3rd Qu.:21.75  
##               Max.   :28.00
```



```r
with(Crisantemo, tapply(Crescimento, list(Concentracao), mean, na.rm=TRUE))
```

```
##    50   100   200   400 
## 15.34 17.16 18.52 22.10
```


```r
AnovaModel.1 <- lm(Crescimento ~ Concentracao, data=Crisantemo, contrasts=list(Concentracao ="contr.Sum"))
Anova(AnovaModel.1)
```

```
## Anova Table (Type II tests)
## 
## Response: Crescimento
##              Sum Sq Df F value   Pr(>F)   
## Concentracao 245.48  3  4.9392 0.005651 **
## Residuals    596.40 36                    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

```r
with(Crisantemo, (tapply(Crescimento, list(Concentracao), mean, na.rm=TRUE))) # means
```

```
##    50   100   200   400 
## 15.34 17.16 18.52 22.10
```

```r
with(Crisantemo, (tapply(Crescimento, list(Concentracao), sd, na.rm=TRUE))) # std. deviations
```

```
##       50      100      200      400 
## 3.209777 4.525287 4.708574 3.649049
```

```r
xtabs(~ Concentracao, data=Crisantemo) # counts
```

```
## Concentracao
##  50 100 200 400 
##  10  10  10  10
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
pairwise.t.test(Crisantemo$Crescimento, Crisantemo$Concentracao, p.adjust.method="bonferroni")
```

```
## 
## 	Pairwise comparisons using t tests with pooled SD 
## 
## data:  Crisantemo$Crescimento and Crisantemo$Concentracao 
## 
##     50     100    200   
## 100 1.0000 -      -     
## 200 0.5350 1.0000 -     
## 400 0.0041 0.0608 0.3417
## 
## P value adjustment method: bonferroni
```



```r
with(Crisantemo, tapply(Crescimento, Concentracao, var, na.rm=TRUE))
```

```
##       50      100      200      400 
## 10.30267 20.47822 22.17067 13.31556
```

```r
bartlett.test(Crescimento ~ Concentracao, data=Crisantemo)
```

```
## 
## 	Bartlett test of homogeneity of variances
## 
## data:  Crescimento by Concentracao
## Bartlett's K-squared = 1.6355, df = 3, p-value = 0.6514
```


```r
with(Crisantemo, tapply(Crescimento, Concentracao, var, na.rm=TRUE))
```

```
##       50      100      200      400 
## 10.30267 20.47822 22.17067 13.31556
```

```r
leveneTest(Crescimento ~ Concentracao, data=Crisantemo, center="median")
```

```
## Levene's Test for Homogeneity of Variance (center = "median")
##       Df F value Pr(>F)
## group  3  0.4573 0.7138
##       36
```


