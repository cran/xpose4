% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootgam.plots.R
\name{xp.inc.ind.cond.stab.cov}
\alias{xp.inc.ind.cond.stab.cov}
\title{Trace plots for conditional indices rper replicate number}
\usage{
xp.inc.ind.cond.stab.cov(
  bootgam.obj = NULL,
  boot.type = NULL,
  main = NULL,
  xlb = "Bootstrap replicate number",
  ylb = "Conditional inclusion frequency",
  limits = c(0.2, 0.8),
  normalize = TRUE,
  split.plots = FALSE,
  start = 25,
  ...
)
}
\arguments{
\item{bootgam.obj}{The bootgam or bootscm object.}

\item{boot.type}{Either "bootgam" or "bootscm". Default is NULL, which means
the user will be asked to make a choice.}

\item{main}{The title of the plot}

\item{xlb}{The x-label of the plot}

\item{ylb}{The y-label of the plot}

\item{limits}{Limits for the inclusion index.}

\item{normalize}{Should one normalize?}

\item{split.plots}{Should the plots be split?}

\item{start}{When to start.}

\item{...}{Arguments passed to other functions.}
}
\value{
A lattice plot object.
}
\description{
Trace plots for conditional indices rper replicate number
}
\seealso{
Other bootgam: 
\code{\link{xp.daic.npar.plot}()},
\code{\link{xp.dofv.npar.plot}()},
\code{\link{xp.inc.cond.stab.cov}()},
\code{\link{xp.inc.stab.cov}()},
\code{\link{xp.incl.index.cov}()},
\code{\link{xp.incl.index.cov.ind}()}

Other bootscm: 
\code{\link{bootscm.import}()},
\code{\link{xp.daic.npar.plot}()},
\code{\link{xp.dofv.npar.plot}()},
\code{\link{xp.inc.cond.stab.cov}()},
\code{\link{xp.inc.stab.cov}()},
\code{\link{xp.incl.index.cov}()},
\code{\link{xp.incl.index.cov.ind}()}
}
\concept{bootgam}
\concept{bootscm}
