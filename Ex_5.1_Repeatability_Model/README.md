
# Example 5.1 - Repeatability Model with MiXBLUP

Repeatabilty model with a dairy example. 

## Instruction File

`ctl.mix` file (instruction file for MiXBLUP)

```bash
TITLE Example 5.1 - Repeatability Model

# Data File
DATAFILE data_5.1.txt !MISSING 0 !STATS NDHL # set missing value and data statistics
# I = Integer, A = Alphanumeric, R = [Real] -> Covariate, T = Trait
  ID A
  ID2 A
  Sire A
  Dam A
  Parity A
  HYS A
  FY T

# Pedigree / Relationship Matrix
PEDFILE ped_5.1.txt !CALCINBR  # Inbreeding calculated
  ID A
  Sire A
  Dam A

# Variance Components
PARFILE par.txt

# Model(s)
MODEL
  FY ~ HYS Parity !RANDOM G(ID) ID2

# Options
SOLVING
  !MAXIT 1000 
```

## Data File

`data_5.1.txt`

**NOTE:** You must add a 2nd column with the same values (IDs here) to run repeatability. 

```bash
4 4 1 2 1 1 201
4 4 1 2 2 3 280
5 5 3 2 1 1 150
5 5 3 2 2 4 200
6 6 1 5 1 2 160
6 6 1 5 2 3 190
7 7 3 4 1 1 180
7 7 3 4 2 3 250
8 8 1 7 1 2 285
8 8 1 7 2 4 300
```

## Pedigree File

`ped_5.1.txt`

**NOTE:** MiXBLUP will add the ancestors here with missing parents on it's own. 

```bash
4 1 2
5 3 2
6 1 5
7 3 4
8 1 7
```

## Variance Component File

`par.txt`

```bash
G
FY(ID) 20

ID2
FY 12

Res
FY 28
```




