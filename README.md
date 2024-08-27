# MiXBLUP Examples

Documentation and examples for [MiXBLUP](https://www.mixblup.eu/) Software using Mrode's 4th Edition. 

Please get a copy of Mrode's book, here is link to <a href="https://www.amazon.com/Linear-Models-Prediction-Genetic-Animals/dp/1800620489/ref=sr_1_1?crid=33JGPUS52K1UE&dib=eyJ2IjoiMSJ9.cgsmL0Fr1_dsmNh9rPNjhw.vmcwro4QogCZwkZPHJzZpKjGIsw_HCn-FWgd3NrPh_M&dib_tag=se&keywords=mrode+4th+edition+linear+models&qid=1723557770&sprefix=mrode+4th+edition+linear+models%2Caps%2C79&sr=8-1" target="_blank">Amazon</a>.

MiXBLUP is one of the only softwares in the world that can handle large-scale genetic evaluations (other is <a href="https://nce.ads.uga.edu/wiki/doku.php?id=start" target="_blank">BLUPF90</a>).

**General notes on MiXBLUP:**

* Programmed between **Wageningen University** (Netherlands) and Finland (**LUKE**)
* Maintained by <a href="https://www.wur.nl/en/persons/jan-ten-napel-1.htm" target="_blank">Dr. Jan ten Napel</a> and <a href="https://research.wur.nl/en/persons/jeremie-vandenplas" target="_blank">Dr. Jeremie Vandenplas</a>
* Allows pedigree (no genotypes), GBLUP, single-step GBLUP (**ssGBLUP**), and single-step ridge-regresssion (ssRRBLUP) based on Rohan Fernando's work

The documentation is pretty good and lengthy but I thought examples may help users.

**Files Needed at Minimum:**

* **Instruction file** (e.g. ctl.mix)
* **Data** File - Space delimited (can have header line with column names)
* **Pedigree** File or Relationship Matrix (space delimited)
* **Variance component file** (par.txt or other name)
* **License file**
* **Genotype file** OPTIONAL - only for genomic analyses (GBLUP, ssGBLUP, SNPBLUP)

**Other notes:**

* Everything space delimited
* 0 as missing value (but you can change with !MISSING)



