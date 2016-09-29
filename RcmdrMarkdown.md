<!-- R Commander Markdown Template -->

Replace with Main Title
=======================

### Your Name

### 2016-09-29








```r
> Dataset <- read.table("/home/mae5755.16/Downloads/dados.csv", header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
```


```r
> with(Dataset, (t.test(amostra1, alternative='two.sided', mu=4.0, conf.level=.95)))
```

```

	One Sample t-test

data:  amostra1
t = 0.40585, df = 99, p-value = 0.6857
alternative hypothesis: true mean is not equal to 4
95 percent confidence interval:
 2.680660 5.997831
sample estimates:
mean of x 
 4.339245 
```


```r
> with(Dataset, (t.test(amostra1, alternative='two.sided', mu=4.1, conf.level=.95)))
```

```

	One Sample t-test

data:  amostra1
t = 0.28622, df = 99, p-value = 0.7753
alternative hypothesis: true mean is not equal to 4.1
95 percent confidence interval:
 2.680660 5.997831
sample estimates:
mean of x 
 4.339245 
```


```r
> with(NormalSamples, (t.test(obs, alternative='two.sided', mu=4.0, conf.level=.95)))
```

```

	One Sample t-test

data:  obs
t = 20.553, df = 99, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 4
95 percent confidence interval:
 8.938206 9.993602
sample estimates:
mean of x 
 9.465904 
```


