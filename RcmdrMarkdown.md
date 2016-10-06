<!-- R Commander Markdown Template -->

Replace with Main Title
=======================

### Your Name

### 2016-10-06








```r
> Dataset <- read.table("/home/mae5755.16/Downloads/tabela.csv", header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
```


```r
> summary(Dataset)
```

```
 local   concentracao 
 A:10   Min.   :18.0  
 B:10   1st Qu.:35.5  
        Median :42.5  
        Mean   :41.6  
        3rd Qu.:48.5  
        Max.   :58.0  
```



```r
> library(abind, pos=14)
```



```r
> library(e1071, pos=15)
```



```r
> numSummary(Dataset[,"concentracao"], groups=Dataset$local, statistics=c("mean", "sd", "IQR", "quantiles"), 
+   quantiles=c(0,.25,.5,.75,1))
```

```
  mean        sd IQR 0%   25% 50%   75% 100% data:n
A 46.7 11.136028 7.0 18 45.50  49 52.50   58     10
B 36.5  6.450667 7.5 25 33.25  37 40.75   46     10
```


```r
> Boxplot( ~ concentracao, data=Dataset, id.method="y")
```

<img src="figure/unnamed-chunk-8-1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="750" />


```r
> Boxplot(concentracao~local, data=Dataset, id.method="y")
```

<img src="figure/unnamed-chunk-9-1.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="750" />

```
[1] "4"
```


```r
> t.test(concentracao~local, alternative='two.sided', conf.level=.95, var.equal=FALSE, data=Dataset)
```

```

	Welch Two Sample t-test

data:  concentracao by local
t = 2.5063, df = 14.429, p-value = 0.02473
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  1.495685 18.904315
sample estimates:
mean in group A mean in group B 
           46.7            36.5 
```


```r
> t.test(concentracao~local, alternative='two.sided', conf.level=.95, var.equal=TRUE, data=Dataset)
```

```

	Two Sample t-test

data:  concentracao by local
t = 2.5063, df = 18, p-value = 0.02202
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  1.649938 18.750062
sample estimates:
mean in group A mean in group B 
           46.7            36.5 
```


```r
> with(Dataset, qqPlot(concentracao, dist="norm", id.method="y", id.n=2, labels=rownames(Dataset)))
```

<img src="figure/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="750" />

```
 4 15 
 1  2 
```


```r
> load("/home/mae5755.16/Downloads/a.csv")
```

```
Error: número mágico do arquivo de restauração inválido (arquivo pode estar corrompido) -- nenhum dado carregado
```



```r
> grupo_a <- read.table("/home/mae5755.16/Downloads/a.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
+   strip.white=TRUE)
```


```r
> grupo_b <- read.table("/home/mae5755.16/Downloads/b.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
+   strip.white=TRUE)
```


```r
> with(grupo_a, qqPlot(concentracao, dist="norm", id.method="y", id.n=2, labels=rownames(grupo_a)))
```

<img src="figure/unnamed-chunk-16-1.png" title="plot of chunk unnamed-chunk-16" alt="plot of chunk unnamed-chunk-16" width="750" />

```
 4  2 
 1 10 
```


```r
> with(grupo_b, qqPlot(concentracao, dist="norm", id.method="y", id.n=2, labels=rownames(grupo_b)))
```

<img src="figure/unnamed-chunk-17-1.png" title="plot of chunk unnamed-chunk-17" alt="plot of chunk unnamed-chunk-17" width="750" />

```
 5  8 
 1 10 
```


