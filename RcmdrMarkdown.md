<!-- R Commander Markdown Template -->

Replace with Main Title
=======================

### Your Name

### 2016-08-18




```r
> Bicarello <- read.table("/home/mae5755.16/Downloads/Bricarello2002.csv", header=TRUE, sep=",", na.strings="NA", dec=".", 
+   strip.white=TRUE)
```


```r
> Bicarello2002 <- read.table("/home/mae5755.16/Downloads/Bricarello2002.csv", header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
```


```r
> Bicarello2002 <- read.table("/home/mae5755.16/Downloads/Bricarello2002.csv", header=TRUE, sep="", na.strings="NA", dec=".", strip.white=TRUE)
```


```r
> Bicarello2002
```

```
   Grupo.Iniciais.Individuo.Col_basal.Col_dieta.Col_soja.Col_placebo.Col_HDL_basal.Col_HDL_dieta.Col_HDL_soja.Col_HDL_placebo
1                                                                                         1,AFG,1,279,314,279,258,52,47,67,55
2                                                                                         1,SPS,2,228,231,221,223,41,43,67,51
3                                                                                         1,MLN,3,267,237,226,274,53,55,85,67
4                                                                                         1,BSS,4,246,215,204,171,37,38,50,41
5                                                                                         1,NBJ,5,254,258,254,233,50,50,92,73
6                                                                                         1,MCM,6,218,208,225,221,64,64,82,83
7                                                                                         1,AMO,7,231,202,261,257,64,60,83,66
8                                                                                         1,R-B,8,269,266,282,272,74,78,78,71
9                                                                                         1,HRO,9,221,165,233,255,32,25,33,31
10                                                                                       1,HGS,17,219,196,214,234,45,43,39,45
11                                                                                       1,GLP,18,259,244,197,197,61,49,52,56
12                                                                                       1,SMS,23,235,199,200,202,57,44,47,57
13                                                                                       1,NGA,24,228,257,237,247,54,72,63,79
14                                                                                       1,EEG,25,240,253,268,245,51,45,48,49
15                                                                                       1,MEN,26,240,229,288,241,57,50,66,60
16                                                                                       1,JTJ,27,235,222,205,194,41,38,41,41
17                                                                                       1,H-P,28,220,215,214,220,53,52,57,59
18                                                                                       1,MMH,29,236,242,210,224,58,56,52,60
19                                                                                       1,LQT,30,257,281,244,246,50,58,81,67
20                                                                                       1,LGF,31,298,319,203,242,73,75,86,72
21                                                                                       1,SRA,32,233,262,224,262,44,51,65,58
22                                                                                       1,MVC,33,230,216,202,211,39,46,54,43
23                                                                                       1,ANN,34,216,208,200,188,51,48,61,56
24                                                                                       1,RBB,35,215,219,229,226,46,47,58,51
25                                                                                       1,R-P,36,226,219,220,228,70,66,80,71
26                                                                                       1,MES,37,300,262,234,293,68,85,86,78
27                                                                                       1,AMC,38,260,278,269,273,83,91,87,85
28                                                                                       1,MMP,53,274,223,203,269,51,47,84,54
29                                                                                       1,JSS,54,277,245,242,256,78,68,70,60
30                                                                                       1,IIA,55,278,260,249,263,85,85,88,84
31                                                                                       1,LLS,56,259,247,228,219,68,59,57,37
32                                                                                       1,MMM,57,220,179,207,187,42,36,47,35
33                                                                                       1,JBS,58,238,195,234,232,51,52,46,39
34                                                                                       1,SAB,59,255,257,241,245,41,51,40,46
35                                                                                       2,JMJ,10,269,217,242,282,37,49,48,41
36                                                                                                                       2,EM
37                                                                                           S,11,261,224,230,251,75,92,60,80
38                                                                                       2,EHS,12,258,248,258,287,52,63,60,51
39                                                                                       2,NJM,13,256,247,193,253,67,63,44,57
40                                                                                       2,JRN,14,234,207,266,208,41,55,48,47
41                                                                                       2,ECN,15,220,233,223,235,43,44,42,38
42                                                                                       2,IMB,16,238,209,208,200,87,79,90,65
43                                                                                       2,OMR,19,218,221,215,220,44,41,51,45
44                                                                                       2,MLC,20,235,237,223,243,71,73,75,39
45                                                                                       2,JJF,21,284,353,291,295,41,38,42,38
46                                                                                       2,IEF,22,230,255,240,224,64,70,79,60
47                                                                                       2,MAS,39,282,268,307,314,41,37,46,43
48                                                                                       2,MSG,40,237,225,237,240,82,87,87,85
49                                                                                       2,AMA,41,201,235,212,214,66,71,59,63
50                                                                                       2,MGL,42,289,339,348,358,54,67,61,63
51                                                                                       2,MCS,43,329,312,294,274,39,53,51,48
52                                                                                       2,SMO,44,241,238,214,204,35,41,40,39
53                                                                                       2,J-S,45,224,253,273,245,56,82,80,73
54                                                                                       2,JBM,46,206,197,202,201,47,55,50,43
55                                                                                       2,RLO,47,279,264,229,242,57,59,48,58
56                                                                                       2,ARS,48,283,252,245,255,52,52,52,49
57                                                                                       2,MMC,49,263,238,257,232,83,71,71,75
58                                                                                       2,MAD,50,255,236,245,221,68,72,85,61
59                                                                                       2,APM,51,205,218,213,233,38,39,43,37
60                                                                                       2,LFM,52,278,264,286,245,74,80,62,62
61                                                                                       2,AAH,60,232,273,227,251,59,55,54,53
```


```r
> Bicarello2002 <- read.table("/home/mae5755.16/Downloads/Bricarello2002.csv", header=TRUE, sep=",", na.strings="NA", dec=".", strip.white=TRUE)
```


```r
> Bicarello2002
```

```
   Grupo Iniciais Individuo Col_basal Col_dieta Col_soja Col_placebo
1      1      AFG         1       279       314      279         258
2      1      SPS         2       228       231      221         223
3      1      MLN         3       267       237      226         274
4      1      BSS         4       246       215      204         171
5      1      NBJ         5       254       258      254         233
6      1      MCM         6       218       208      225         221
7      1      AMO         7       231       202      261         257
8      1      R-B         8       269       266      282         272
9      1      HRO         9       221       165      233         255
10     1      HGS        17       219       196      214         234
11     1      GLP        18       259       244      197         197
12     1      SMS        23       235       199      200         202
13     1      NGA        24       228       257      237         247
14     1      EEG        25       240       253      268         245
15     1      MEN        26       240       229      288         241
16     1      JTJ        27       235       222      205         194
17     1      H-P        28       220       215      214         220
18     1      MMH        29       236       242      210         224
19     1      LQT        30       257       281      244         246
20     1      LGF        31       298       319      203         242
21     1      SRA        32       233       262      224         262
22     1      MVC        33       230       216      202         211
23     1      ANN        34       216       208      200         188
24     1      RBB        35       215       219      229         226
25     1      R-P        36       226       219      220         228
26     1      MES        37       300       262      234         293
27     1      AMC        38       260       278      269         273
28     1      MMP        53       274       223      203         269
29     1      JSS        54       277       245      242         256
30     1      IIA        55       278       260      249         263
31     1      LLS        56       259       247      228         219
32     1      MMM        57       220       179      207         187
33     1      JBS        58       238       195      234         232
34     1      SAB        59       255       257      241         245
35     2      JMJ        10       269       217      242         282
36     2     EM S        11       261       224      230         251
37     2      EHS        12       258       248      258         287
38     2      NJM        13       256       247      193         253
39     2      JRN        14       234       207      266         208
40     2      ECN        15       220       233      223         235
41     2      IMB        16       238       209      208         200
42     2      OMR        19       218       221      215         220
43     2      MLC        20       235       237      223         243
44     2      JJF        21       284       353      291         295
45     2      IEF        22       230       255      240         224
46     2      MAS        39       282       268      307         314
47     2      MSG        40       237       225      237         240
48     2      AMA        41       201       235      212         214
49     2      MGL        42       289       339      348         358
50     2      MCS        43       329       312      294         274
51     2      SMO        44       241       238      214         204
52     2      J-S        45       224       253      273         245
53     2      JBM        46       206       197      202         201
54     2      RLO        47       279       264      229         242
55     2      ARS        48       283       252      245         255
56     2      MMC        49       263       238      257         232
57     2      MAD        50       255       236      245         221
58     2      APM        51       205       218      213         233
59     2      LFM        52       278       264      286         245
60     2      AAH        60       232       273      227         251
   Col_HDL_basal Col_HDL_dieta Col_HDL_soja Col_HDL_placebo
1             52            47           67              55
2             41            43           67              51
3             53            55           85              67
4             37            38           50              41
5             50            50           92              73
6             64            64           82              83
7             64            60           83              66
8             74            78           78              71
9             32            25           33              31
10            45            43           39              45
11            61            49           52              56
12            57            44           47              57
13            54            72           63              79
14            51            45           48              49
15            57            50           66              60
16            41            38           41              41
17            53            52           57              59
18            58            56           52              60
19            50            58           81              67
20            73            75           86              72
21            44            51           65              58
22            39            46           54              43
23            51            48           61              56
24            46            47           58              51
25            70            66           80              71
26            68            85           86              78
27            83            91           87              85
28            51            47           84              54
29            78            68           70              60
30            85            85           88              84
31            68            59           57              37
32            42            36           47              35
33            51            52           46              39
34            41            51           40              46
35            37            49           48              41
36            75            92           60              80
37            52            63           60              51
38            67            63           44              57
39            41            55           48              47
40            43            44           42              38
41            87            79           90              65
42            44            41           51              45
43            71            73           75              39
44            41            38           42              38
45            64            70           79              60
46            41            37           46              43
47            82            87           87              85
48            66            71           59              63
49            54            67           61              63
50            39            53           51              48
51            35            41           40              39
52            56            82           80              73
53            47            55           50              43
54            57            59           48              58
55            52            52           52              49
56            83            71           71              75
57            68            72           85              61
58            38            39           43              37
59            74            80           62              62
60            59            55           54              53
```


```r
> summary(Bicarello2002)
```

```
     Grupo          Iniciais    Individuo       Col_basal    
 Min.   :1.000   AAH    : 1   Min.   : 1.00   Min.   :201.0  
 1st Qu.:1.000   AFG    : 1   1st Qu.:15.75   1st Qu.:228.0  
 Median :1.000   AMA    : 1   Median :30.50   Median :240.0  
 Mean   :1.433   AMC    : 1   Mean   :30.50   Mean   :247.8  
 3rd Qu.:2.000   AMO    : 1   3rd Qu.:45.25   3rd Qu.:267.5  
 Max.   :2.000   ANN    : 1   Max.   :60.00   Max.   :329.0  
                 (Other):54                                  
   Col_dieta        Col_soja      Col_placebo    Col_HDL_basal  
 Min.   :165.0   Min.   :193.0   Min.   :171.0   Min.   :32.00  
 1st Qu.:217.8   1st Qu.:213.8   1st Qu.:220.8   1st Qu.:43.75  
 Median :237.5   Median :229.5   Median :241.5   Median :53.00  
 Mean   :241.4   Mean   :237.1   Mean   :240.6   Mean   :55.95  
 3rd Qu.:258.5   3rd Qu.:254.8   3rd Qu.:256.2   3rd Qu.:67.25  
 Max.   :353.0   Max.   :348.0   Max.   :358.0   Max.   :87.00  
                                                                
 Col_HDL_dieta    Col_HDL_soja   Col_HDL_placebo
 Min.   :25.00   Min.   :33.00   Min.   :31.00  
 1st Qu.:46.75   1st Qu.:48.00   1st Qu.:44.50  
 Median :55.00   Median :59.50   Median :56.50  
 Mean   :57.70   Mean   :62.00   Mean   :56.55  
 3rd Qu.:70.25   3rd Qu.:79.25   3rd Qu.:66.25  
 Max.   :92.00   Max.   :92.00   Max.   :85.00  
                                                
```


```r
> Bicarello2002 <- within(Bicarello2002, {
+   Grupo <- factor(Grupo, labels=c('G1','G2'))
+ })
```


```r
> Bicarello2002 <- within(Bicarello2002, {Grupo <- factor(Grupo, labels=c('G1','G2'))})
```


```r
> summary(Bicarello2002)
```

```
 Grupo      Iniciais    Individuo       Col_basal       Col_dieta    
 G1:34   AAH    : 1   Min.   : 1.00   Min.   :201.0   Min.   :165.0  
 G2:26   AFG    : 1   1st Qu.:15.75   1st Qu.:228.0   1st Qu.:217.8  
         AMA    : 1   Median :30.50   Median :240.0   Median :237.5  
         AMC    : 1   Mean   :30.50   Mean   :247.8   Mean   :241.4  
         AMO    : 1   3rd Qu.:45.25   3rd Qu.:267.5   3rd Qu.:258.5  
         ANN    : 1   Max.   :60.00   Max.   :329.0   Max.   :353.0  
         (Other):54                                                  
    Col_soja      Col_placebo    Col_HDL_basal   Col_HDL_dieta  
 Min.   :193.0   Min.   :171.0   Min.   :32.00   Min.   :25.00  
 1st Qu.:213.8   1st Qu.:220.8   1st Qu.:43.75   1st Qu.:46.75  
 Median :229.5   Median :241.5   Median :53.00   Median :55.00  
 Mean   :237.1   Mean   :240.6   Mean   :55.95   Mean   :57.70  
 3rd Qu.:254.8   3rd Qu.:256.2   3rd Qu.:67.25   3rd Qu.:70.25  
 Max.   :348.0   Max.   :358.0   Max.   :87.00   Max.   :92.00  
                                                                
  Col_HDL_soja   Col_HDL_placebo
 Min.   :33.00   Min.   :31.00  
 1st Qu.:48.00   1st Qu.:44.50  
 Median :59.50   Median :56.50  
 Mean   :62.00   Mean   :56.55  
 3rd Qu.:79.25   3rd Qu.:66.25  
 Max.   :92.00   Max.   :85.00  
                                
```


```r
> with(Bicarello2002, Hist(Col_HDL_basal, scale="frequency", breaks="Sturges", col="darkgray"))
```

<img src="figure/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="750" />


```r
> with(Bicarello2002, Hist(Col_HDL_basal, groups=Grupo, scale="frequency", breaks="Sturges", col="darkgray"))
```

<img src="figure/unnamed-chunk-13-1.png" title="plot of chunk unnamed-chunk-13" alt="plot of chunk unnamed-chunk-13" width="750" />


```r
> with(Bicarello2002, Hist(Col_HDL_soja, groups=Grupo, scale="frequency", breaks="Sturges", col="darkgray"))
```

<img src="figure/unnamed-chunk-14-1.png" title="plot of chunk unnamed-chunk-14" alt="plot of chunk unnamed-chunk-14" width="750" />


```r
> Boxplot( ~ Col_placebo, data=Bicarello2002, id.method="y")
```

<img src="figure/unnamed-chunk-15-1.png" title="plot of chunk unnamed-chunk-15" alt="plot of chunk unnamed-chunk-15" width="750" />

```
[1] "46" "49"
```


