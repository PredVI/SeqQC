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
```

## Usage
```r
library(SeqQC)

seqs <- read_fasta("example.fasta")
seq_qc(seqs)
qc_report(seqs)

```

## License

MIT

## Citation

If you use SeqQC in your work, please cite:

Elsharkawy, M. T. (2026). SeqQC: FASTA Sequence Quality Control Package (R). Zenodo.
https://doi.org/10.5281/zenodo.18369550

## Author

Mohammad Elsharkawy

