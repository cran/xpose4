% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boot.hist.R
\name{boot.hist}
\alias{boot.hist}
\title{Function to create histograms of results from the \code{bootstrap} tool in
\href{https://uupharmacometrics.github.io/PsN/}{PsN}}
\usage{
boot.hist(
  results.file = "raw_results_run1.csv",
  incl.ids.file = "included_individuals1.csv",
  min.failed = FALSE,
  cov.failed = FALSE,
  cov.warnings = FALSE,
  boundary = FALSE,
  showOriginal = TRUE,
  showMean = FALSE,
  showMedian = FALSE,
  showPCTS = FALSE,
  PCTS = c(0.025, 0.975),
  excl.id = c(),
  layout = NULL,
  sort.plots = TRUE,
  main = "Default",
  ...
)
}
\arguments{
\item{results.file}{The location of the results file from the
\code{bootstrap} tool in \href{https://uupharmacometrics.github.io/PsN/}{PsN}}

\item{incl.ids.file}{The location of the included ids file from the
\code{bootstrap} tool in \href{https://uupharmacometrics.github.io/PsN/}{PsN}}

\item{min.failed}{Should NONMEM runs that had failed minimization be
skipped? \code{TRUE} or \code{FALSE}}

\item{cov.failed}{Should NONMEM runs that had a failed covariance step be
skipped? \code{TRUE} or \code{FALSE}}

\item{cov.warnings}{Should NONMEM runs that had covariance step warnings be
skipped? \code{TRUE} or \code{FALSE}}

\item{boundary}{Should NONMEM runs that had boundary warnings be skipped?
\code{TRUE} or \code{FALSE}}

\item{showOriginal}{Should we show the value from the original NONMEM run in
the histograms? \code{TRUE} or \code{FALSE}}

\item{showMean}{Should we show the mean of the histogram data? \code{TRUE}
or \code{FALSE}}

\item{showMedian}{Should we show the median of the histogram data?
\code{TRUE} or \code{FALSE}}

\item{showPCTS}{Should we show the percentiles of the histogram data?
\code{TRUE} or \code{FALSE}}

\item{PCTS}{the percentiles to show.  Can be a vector of any length.  For
example, \code{c(0.05,0.2,0.5,0.7)}}

\item{excl.id}{Vector of id numbers to exclude.}

\item{layout}{Layout of plots.  A vector of number of rows and columns in
each plot. \code{c(3,3)} for example.}

\item{sort.plots}{Should the plots be sorted based on type of parameter.
Sorting on parameters, standard errors, shrinkage and eigenvalues.}

\item{main}{The title of the plot.}

\item{\dots}{Additional arguments that can be passed to
\link{xpose.plot.histogram}, \link{xpose.panel.histogram},
\link[lattice]{histogram} and other \link[lattice]{lattice-package}
functions.}
}
\value{
A lattice object
}
\description{
Reads results from the \code{bootstrap} tool in \href{https://uupharmacometrics.github.io/PsN/}{PsN}
and then creates histograms.
}
\examples{

\dontrun{
boot.hist(results.file="./boot1/raw_results_run1.csv", 
          incl.ids.file="./boot1/included_individuals1.csv")
}

}
\references{
\href{https://uupharmacometrics.github.io/PsN/}{PsN}
}
\seealso{
\link{xpose.plot.histogram}, \link{xpose.panel.histogram},
\link[lattice]{histogram} and other \link[lattice]{lattice-package}
functions.

Other PsN functions: 
\code{\link{bootscm.import}()},
\code{\link{npc.coverage}()},
\code{\link{randtest.hist}()},
\code{\link{read.npc.vpc.results}()},
\code{\link{read.vpctab}()},
\code{\link{xpose.VPC}()},
\code{\link{xpose.VPC.both}()},
\code{\link{xpose.VPC.categorical}()},
\code{\link{xpose4-package}}
}
\author{
Andrew Hooker
}
\concept{PsN functions}
\keyword{methods}
