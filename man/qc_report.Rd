\name{qc_report}
\alias{qc_report}
\title{QC Report}
\description{Flag sequences failing basic QC thresholds.}
\usage{qc_report(seq)}
\arguments{
  \item{seq}{A character vector of sequences.}
}
\value{A data.frame with QC metrics with pass and reason columns.}
\examples{qc_report(c(a= 'ATATAT', b= 'NNNNN'))}

