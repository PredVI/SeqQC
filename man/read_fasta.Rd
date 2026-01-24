\name{read_fasta}
\alias{read_fasta}
\title{Read Fasta Sequences}
\description{Read FASTA file and return named character vector of sequences.}
\usage{read_fasta(file)}
\arguments{
  \item{file}{Path to a FASTA file.}
}
\value{Named character vector of sequences.}
\examples{ file <- tempfile(fileext= '.fa')
cat('>s1\nATG\n', file)
read_fasta(file)}

