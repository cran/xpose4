% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xp.get.disp.R
\name{xp.get.disp}
\alias{xp.get.disp}
\title{Default function for calculating dispersion in \code{\link{xpose.gam}}.}
\usage{
xp.get.disp(gamdata, parnam, covnams, family = "gaussian", ...)
}
\arguments{
\item{gamdata}{the data used for a GAM}

\item{parnam}{ONE (and only one) model parameter name.}

\item{covnams}{Covariate names to test on parameter.}

\item{family}{Assumption for the parameter distribution.}

\item{...}{Used to pass arguments to more basic functions.}
}
\value{
a list including the dispersion
}
\description{
Default function for calculating dispersion in \code{\link{xpose.gam}}.
}
\seealso{
Other GAM functions: 
\code{\link{GAM_summary_and_plot}},
\code{\link{xp.scope3}()},
\code{\link{xpose.bootgam}()},
\code{\link{xpose.gam}()},
\code{\link{xpose4-package}}
}
\concept{GAM functions}
