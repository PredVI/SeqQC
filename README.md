# SeqQC

SeqQC is an R package for basic quality control of DNA sequences in FASTA files.  
It provides functions to import FASTA data and compute common QC metrics such as GC%, N-content, and sequence validity, and generate a QC report.

## Features
- FASTA import
- GC% calculation
- N-content calculation
- Sequence validity checks
- QC report with pass/fail flags and reasons
- Unit tests using `testthat`

## Installation
```r
# install.packages("remotes")
remotes::install_github("PredVI/SeqQC")

