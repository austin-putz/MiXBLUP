
# Example 6.1 - Bivariate Model with MiXBLUP

Repeatabilty model with a dairy example. 

## Instruction File

`ctl.mix` file (instruction file for MiXBLUP)

```bash
TITLE Example 6.1 - Bivariate Model

# Data File
DATAFILE data_6.1.txt !MISSING 0 !STATS NDHL # set missing value and data statistics
# I = Integer, A = Alphanumeric, R = [Real] -> Covariate, T = Trait
  ID A
  Sex A
  Sire A
  Dam A
  WWG T
  PWG T

# Pedigree / Relationship Matrix
PEDFILE ped_6.1.txt !CALCINBR  # Inbreeding calculated
  ID A
  Sire A
  Dam A

# Variance Components
PARFILE par.txt

# Model(s)
MODEL 
  WWG ~ Sex !RANDOM G(ID)
  PWG ~ Sex !RANDOM G(ID)

# Options
SOLVING 
  !MAXIT 1000
 
```

## Data File

`data_6.1.txt`

**NOTE:** You must add a 2nd column with the same values (IDs here) to run repeatability. 

```bash
4 Male 1 0 4.5 6.8
5 Female 3 2 2.9 5.0
6 Female 1 2 3.9 6.8
7 Male 4 5 3.5 6.0
8 Male 3 6 5.0 7.5
```

## Pedigree File

`ped_6.1.txt`

**NOTE:** MiXBLUP will add the ancestors here with missing parents on it's own. 

```bash
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
PWG(ID) 18 40

Res
WWG 40
PWG 11 30
```


