<!-- R Commander Markdown Template -->

Replace with Main Title
=======================

### Your Name

### 2016-10-13







```r
> Dataset <- read.table("/home/mae5755.16/aula_13out2016.csv", header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
```


```r
> summary(Dataset)
```

```
    fator      resposta    
 passo1:6   Min.   :6.100  
 passo2:6   1st Qu.:7.050  
            Median :7.700  
            Mean   :7.658  
            3rd Qu.:8.200  
            Max.   :9.100  
```



```r
> summary(Dataset)
```

```
    fator      resposta    
 passo1:6   Min.   :6.100  
 passo2:6   1st Qu.:7.050  
            Median :7.700  
            Mean   :7.658  
            3rd Qu.:8.200  
            Max.   :9.100  
```



```r
> local({
+   .Table <- with(Dataset, table(fator))
+   cat("\ncounts:\n")
+   print(.Table)
+   cat("\npercentages:\n")
+   print(round(100*.Table/sum(.Table), 2))
+ })
```

```

counts:
fator
passo1 passo2 
     6      6 

percentages:
fator
passo1 passo2 
    50     50 
```


```r
> local({
+   .Table <- with(Dataset, table(fator))
+   cat("\ncounts:\n")
+   print(.Table)
+   cat("\npercentages:\n")
+   print(round(100*.Table/sum(.Table), 2))
+ })
```

```

counts:
fator
passo1 passo2 
     6      6 

percentages:
fator
passo1 passo2 
    50     50 
```


```r
> with(Dataset, tapply(resposta, list(fator), mean, na.rm=TRUE))
```

```
  passo1   passo2 
7.283333 8.033333 
```


```r
> with(Dataset, tapply(resposta, fator,  var, na.rm=TRUE))
```

```
   passo1    passo2 
0.5576667 0.6146667 
```

```r
> var.test(resposta ~ fator, alternative='two.sided', conf.level=.95, data=Dataset)
```

```

	F test to compare two variances

data:  resposta by fator
F = 0.90727, num df = 5, denom df = 5, p-value = 0.9176
alternative hypothesis: true ratio of variances is not equal to 1
95 percent confidence interval:
 0.1269547 6.4836751
sample estimates:
ratio of variances 
         0.9072668 
```


```r
> summary(Dataset)
```

```
    fator      resposta    
 passo1:6   Min.   :6.100  
 passo2:6   1st Qu.:7.050  
            Median :7.700  
            Mean   :7.658  
            3rd Qu.:8.200  
            Max.   :9.100  
```



```r
> library(abind, pos=14)
```



```r
> library(e1071, pos=15)
```



```r
> numSummary(Dataset[,"resposta"], groups=Dataset$fator, statistics=c("mean", "sd", "se(mean)", "IQR", "quantiles"), 
+   quantiles=c(0,.25,.5,.75,1))
```

```
           mean        sd  se(mean) IQR  0%  25%  50%  75% 100% data:n
passo1 7.283333 0.7467708 0.3048679 0.8 6.1 6.95 7.35 7.75  8.2      6
passo2 8.033333 0.7840068 0.3200694 0.9 6.9 7.60 8.05 8.50  9.1      6
```


```r
> library(mvtnorm, pos=16)
```



```r
> library(survival, pos=16)
```



```r
> library(MASS, pos=16)
```



```r
> library(TH.data, pos=16)
```



```r
> library(multcomp, pos=16)
```



```r
> AnovaModel.1 <- aov(resposta ~ fator, data=Dataset)
> summary(AnovaModel.1)
```

```
            Df Sum Sq Mean Sq F value Pr(>F)
fator        1  1.687  1.6875   2.879  0.121
Residuals   10  5.862  0.5862               
```

```r
> with(Dataset, numSummary(resposta, groups=fator, statistics=c("mean", "sd")))
```

```
           mean        sd data:n
passo1 7.283333 0.7467708      6
passo2 8.033333 0.7840068      6
```


```r
> Dataset <- read.table("/home/mae5755.16/aula_13out2016.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
+   strip.white=TRUE)
```


```r
> with(Dataset, tapply(resposta, list(fator), mean, na.rm=TRUE))
```

```
  passo1   passo2 
7.283333 8.033333 
```


```r
> with(Dataset, tapply(resposta, list(fator), sd, na.rm=TRUE))
```

```
   passo1    passo2 
0.7467708 0.7840068 
```


```r
> AnovaModel.2 <- aov(resposta ~ fator, data=Dataset)
> summary(AnovaModel.2)
```

```
            Df Sum Sq Mean Sq F value Pr(>F)
fator        1  1.687  1.6875   2.879  0.121
Residuals   10  5.862  0.5862               
```

```r
> with(Dataset, numSummary(resposta, groups=fator, statistics=c("mean", "sd")))
```

```
           mean        sd data:n
passo1 7.283333 0.7467708      6
passo2 8.033333 0.7840068      6
```


```r
> t.test(resposta~fator, alternative='two.sided', conf.level=.95, var.equal=FALSE, data=Dataset)
```

```

	Welch Two Sample t-test

data:  resposta by fator
t = -1.6967, df = 9.9764, p-value = 0.1207
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.7352158  0.2352158
sample estimates:
mean in group passo1 mean in group passo2 
            7.283333             8.033333 
```


```r
> t.test(resposta~fator, alternative='greater', conf.level=.95, var.equal=FALSE, data=Dataset)
```

```

	Welch Two Sample t-test

data:  resposta by fator
t = -1.6967, df = 9.9764, p-value = 0.9397
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -1.551351       Inf
sample estimates:
mean in group passo1 mean in group passo2 
            7.283333             8.033333 
```


```r
> t.test(resposta~fator, alternative='less', conf.level=.95, var.equal=FALSE, data=Dataset)
```

```

	Welch Two Sample t-test

data:  resposta by fator
t = -1.6967, df = 9.9764, p-value = 0.06034
alternative hypothesis: true difference in means is less than 0
95 percent confidence interval:
       -Inf 0.05135107
sample estimates:
mean in group passo1 mean in group passo2 
            7.283333             8.033333 
```


