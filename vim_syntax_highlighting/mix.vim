"------------------------------------------------------------------------------"
" Description
"------------------------------------------------------------------------------"

" vim syntax highlighting file for BLUPF90 programs

" Author:   Austin Putz <putz[dot]austin[at]gmail[dot]com>
" Created:  2024-08-14
" Modified: 2024-08-14
" License:  MIT

" Please contact me if you find errors or I forgot a keyword (email above).

if exists("b:current_syntax")
	finish
endif

"==============================================================================="
" KEYWORDS
"==============================================================================="

" MAIN keywords
syn keyword parMainKeywords DATAFILE PEDFILE PARFILE MODEL SOLVING TITLE TMPDIR
syn keyword parMainKeywords REGFILE REGPARFILE CVRTABLE ERMFILE INBRFILE SNPFILE
syn keyword parMainKeywords COMBINE ERMPEDFILE SNPFILE SNPPARFILE IMPFILE DHFILE
syn keyword parMainKeywords RESFILE VARMODEL PRECON
" Multiple keywords (in multiple sections)
syn keyword parKeywords SKIP BLOCK IDCOL GIV AND
" DATAFILE keywords
syn keyword parDataKeywords MISSING STATS MINMAX RESVARCLASS SLASH
syn keyword parDataKeywords CVRMAKE LEG CVRNUM CVRMIN CVRMAX CVRIND CVR
syn keyword parDataKeywords REGTYPE STARTCOV LASTCOV REG
" PEDFILE  keywords
syn keyword parPedKeywords CALCINBR GROUPS MAKEGGCOV MakeGGcov GGCOV GGcov INBRCOL
" Genotype Keywords
syn keyword parGenKeywords ASIS NOORIG CONSTRUCT
syn keyword parGenKeywords METHOD ALFREQ CROSSBRED BREEDS_UNRELATED ALLELES
syn keyword parGenKeywords INFORMATIVE DENSE NMARK MAF STORE_GIV NUMPROC
syn keyword parGenKeywords ZEROG FORM_IJV GFROMDISK BACKSOLVE
syn keyword parGenKeywords LAMBDA ALPHA BETA OMEGA USE_GINV SINGLESTEP
syn keyword parGenKeywords APY APYCORERAN APYCoreRan APYCORELIS AYCoreLis APYPCA APY_A22
" RRBLUP
syn keyword parGenKeywords SNP CENTER NOIMPUTE MISSCOMB MISSPERLOC PREDICT NOCHECK
syn keyword parGenKeywords NOPRUNE VALIDSNP CALCSNPVAR MINGENFREQ GBSORTSNP SAMEORDER
syn keyword parGenKeywords INVLNONGENO ImpIDcol IMPIDCOL ImpCol IMPCOL
" Double haploid
syn keyword parGenKeywords DHMAKE DHID DHCOL
" Parameter file
syn keyword parParKeywords SPARSE RESVARCLASS
" Modeling
syn keyword parModelKeywords WEIGHT RANDOM VARTRAIT DHGLM HETCOR
syn keyword parModelKeywords CONVERTCAT THRESHOLD THRMAXIT THRMXPCG THRMETHOD THRFIXED
" OPTIONS
syn keyword parOptionKeywords MAXIT STOPCRIT NOPEEK PEEKFIRST PEEKEVERY PEEKKEEP RESTART GFROMDISK
syn keyword parOptionKeywords WITHINBL ACROSSBL
syn keyword parOptionKeywords BASEANIMALZERO YHAT EHAT YIELDDEV IDD DYD KEEPTMP SELINDEX
" Reliability
syn keyword parOptionKeywords RELIABILITY MAXNONZ NCOMBLK


"==============================================================================="
" COMMENTS
"==============================================================================="

" Comment
syn match parComment "#.*$" 

"==============================================================================="
" NUMBERS (copied from PERL vim syntax file)
"==============================================================================="

syn match  parNumber	"\<\%(0\%(x\x[[:xdigit:]_]*\|b[01][01_]*\|\o[0-7_]*\|\)\|[1-9][[:digit:]_]*\)\>"
syn match  parFloat	    "\<\d[[:digit:]_]*[eE][\-+]\=\d\+"
syn match  parFloat	    "\<\d[[:digit:]_]*\.[[:digit:]_]*\%([eE][\-+]\=\d\+\)\="
syn match  parFloat	    "\.[[:digit:]_]\+\%([eE][\-+]\=\d\+\)\="

"==============================================================================="
" OTHER
"==============================================================================="

" highlight missmatched keywords if not a keyword (all caps)
" syn match parError '^[[:upper:]]*[[:upper:]]\($\|\s\+\)'

"==============================================================================="
" SET HIGHLIGHTING
"==============================================================================="

let b:current_syntax = "par"

hi parComment        ctermfg=Cyan
hi parMainKeywords   ctermfg=Yellow
hi parKeywords       ctermfg=Magenta
hi parDataKeywords   ctermfg=Magenta
hi parPedKeywords    ctermfg=Magenta
hi parGenKeywords    ctermfg=Magenta
hi parModelKeywords  ctermfg=Magenta
hi parParKeywords    ctermfg=Magenta
hi parOptionKeywords ctermfg=Magenta
hi parNumber         ctermfg=Gray
hi parFloat          ctermfg=Gray
" hi parError          ctermfg=White ctermbg=red






