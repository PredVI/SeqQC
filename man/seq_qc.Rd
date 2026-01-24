\name{seq_qc}
\alias{seq_qc}
\title{Sequence QC}
\description{Compute length, GC fraction, N fraction, and validity for sequences.}
\usage{seq_qc(seq)}
\arguments{
  \item{seq}{A character vector of sequences.}
}
\value{A data.frame with columns: name, length, gc_percent, n, valid.}
\examples{seq_qc(c(a= 'ATCGGT', b= 'NNNNN'))}

