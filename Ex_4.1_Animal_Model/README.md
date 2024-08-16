# Mrode Example 4.1 in MiXBLUP

Simple animal model implemented in MiXBLUP. 

Note: Here we get the same fixed effect output but this may not always be the case. 
The **X** matrix can be parameterized in many ways. Here there is no intercept term
so we can fit both sex effects. Example 5.1 I cannot replicate the same fixed effect
terms as it's parameterized different in MiXBLUP by default. You can always set your
own covariates and fit those independent as covariates. 

## Instruction File

`ctl.mix` file (instruction file for MiXBLUP)

```bash
TITLE Example 4.1 - Simple Animal Model

# Data File
DATAFILE data_4.1.txt !MISSING 0 !STATS NDHL # set missing value and data statistics
# I = Integer, A = Alphanumeric, R = [Real] -> Covariate, T = Trait
  ID A
  Sex A
  Sire A
  Dam A
  WWG T

# Pedigree / Relationship Matrix
PEDFILE ped_4.1.txt !CALCINBR  # Inbreeding calculated
  ID A
  Sire A
  Dam A

# Variance Components
PARFILE par.txt

# Model(s)
MODEL 
  WWG ~ Sex !RANDOM G(ID)

# Options
SOLVING 
  !MAXIT 1000
 
```

## Data File

`data_4.1.txt`

```bash
4 Male 1 0 4.5
5 Female 3 2 2.9
6 Female 1 2 3.9
7 Male 4 5 3.5
8 Male 3 6 5.0
```

## Pedigree File

`ped_4.1.txt`

```bash
1 0 0
2 0 0
3 0 0
4 1 0
5 3 2
6 1 2
7 4 5
8 3 6
```

## Variance Component File

`par.txt`

```bash
G
WWG(ID) 20

Res
WWG 40
```






