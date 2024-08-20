# Example 12.1 - Single-step GBLUP (ssGBLUP) with MiXBLUP

Example: ssGBLUP model with MiXBLUP. 

## Instruction File

`ctl.mix` file (instruction file for MiXBLUP)

```bash
TITLE Example 12.1 - Single Step GBLUP (ssGBLUP) Model

# Data File
DATAFILE data_12.1.txt !MISSING 0 !STATS NDHL # set missing value and data statistics
# I = Integer, A = Alphanumeric, R = [Real] -> Covariate, T = Trait
  ID A
  Sire A
  Dam A
  Mean R
  EDC R
  FDYD T

# SNP file
ERMFILE geno_12.1.txt !CONSTRUCT HINV !SINGLESTEP
ID A   # set column name
!NUMPROC 1 !DENSE 2 !METHOD VanRaden !MAF 0.001
# 1 core, 2nd column has string of genotypes, VanRaden = ZZ' / sum(2pq), MAF = minor allele freq

# Pedigree / Relationship Matrix
PEDFILE ped_12.1.txt !CALCINBR  # Inbreeding calculated
  ID A
  Sire A
  Dam A

# Variance Components
PARFILE par.txt

# Model(s)
MODEL 
  FDYD ~ !RANDOM G(ID)

# Options
SOLVING 
  !MAXIT 1000
```

## Data File

`data_11.1.txt`

```bash
13 0 0 1 558 9.0
14 0 0 1 722 13.4
15 13 4 1 300 12.7
16 15 2 1 73 15.4
17 15 5 1 52 5.9
18 14 6 1 87 7.7
19 14 9 1 64 10.2
20 14 9 1 130 4.8
21 1 3 1 13 7.6
22 14 8 1 125 8.8
23 14 11 1 93 9.8
24 14 10 1 66 9.2
25 14 7 1 75 11.5
26 14 12 1 33 13.3
```

## Pedigree File

`ped_11.1.txt`

```bash
1 0 0
2 0 0
3 0 0
4 0 0
5 0 0
6 0 0
7 0 0
8 0 0
9 0 0
10 0 0
11 0 0
12 0 0
13 0 0
14 0 0
15 13 4
16 15 2
17 15 5
18 14 6
19 14 9
20 14 9
21 1 3
22 14 8
23 14 11
24 14 10
25 14 7
26 14 12
```

## Variance Component File

`par.txt`

```bash
G
FDYD(ID) 35.241

Res
FDYD 245
```


