% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/autocorr.iwres.R
\name{autocorr.iwres}
\alias{autocorr.iwres}
\title{autocorrelation of the individual weighted residuals}
\usage{
autocorr.iwres(
  object,
  type = "p",
  smooth = TRUE,
  ids = F,
  main = "Default",
  ...
)
}
\arguments{
\item{object}{An "xpose.data" object.}

\item{type}{1-character string giving the type of plot desired.  The
following values are possible, for details, see 'plot': '"p"' for points,
'"l"' for lines, '"o"' for over-plotted points and lines, '"b"', '"c"') for
(empty if '"c"') points joined by lines, '"s"' and '"S"' for stair steps and
'"h"' for histogram-like vertical lines.  Finally, '"n"' does not produce
any points or lines.}

\item{smooth}{A \code{NULL} value indicates that no superposed line should
be added to the graph. If \code{TRUE} then a smooth of the data will be
superimposed.}

\item{ids}{A logical value indicating whether text labels should be used as
plotting symbols (the variable used for these symbols indicated by the
\code{idlab} xpose data variable).}

\item{main}{A string giving the plot title or \code{NULL} if none.}

\item{...}{Other arguments passed to \code{\link{xpose.panel.default}}.}
}
\value{
A Lattice object
}
\description{
autocorrelation of the individual weighted residuals
}
\seealso{
Other specific functions: 
\code{\link{absval.cwres.vs.cov.bw}()},
\code{\link{absval.cwres.vs.pred}()},
\code{\link{absval.cwres.vs.pred.by.cov}()},
\code{\link{absval.iwres.cwres.vs.ipred.pred}()},
\code{\link{absval.iwres.vs.cov.bw}()},
\code{\link{absval.iwres.vs.idv}()},
\code{\link{absval.iwres.vs.ipred}()},
\code{\link{absval.iwres.vs.ipred.by.cov}()},
\code{\link{absval.iwres.vs.pred}()},
\code{\link{absval.wres.vs.cov.bw}()},
\code{\link{absval.wres.vs.idv}()},
\code{\link{absval.wres.vs.pred}()},
\code{\link{absval.wres.vs.pred.by.cov}()},
\code{\link{absval_delta_vs_cov_model_comp}},
\code{\link{addit.gof}()},
\code{\link{autocorr.cwres}()},
\code{\link{autocorr.wres}()},
\code{\link{basic.gof}()},
\code{\link{basic.model.comp}()},
\code{\link{cat.dv.vs.idv.sb}()},
\code{\link{cat.pc}()},
\code{\link{cov.splom}()},
\code{\link{cwres.dist.hist}()},
\code{\link{cwres.dist.qq}()},
\code{\link{cwres.vs.cov}()},
\code{\link{cwres.vs.idv}()},
\code{\link{cwres.vs.idv.bw}()},
\code{\link{cwres.vs.pred}()},
\code{\link{cwres.vs.pred.bw}()},
\code{\link{cwres.wres.vs.idv}()},
\code{\link{cwres.wres.vs.pred}()},
\code{\link{dOFV.vs.cov}()},
\code{\link{dOFV.vs.id}()},
\code{\link{dOFV1.vs.dOFV2}()},
\code{\link{data.checkout}()},
\code{\link{dv.preds.vs.idv}()},
\code{\link{dv.vs.idv}()},
\code{\link{dv.vs.ipred}()},
\code{\link{dv.vs.ipred.by.cov}()},
\code{\link{dv.vs.ipred.by.idv}()},
\code{\link{dv.vs.pred}()},
\code{\link{dv.vs.pred.by.cov}()},
\code{\link{dv.vs.pred.by.idv}()},
\code{\link{dv.vs.pred.ipred}()},
\code{\link{gof}()},
\code{\link{ind.plots}()},
\code{\link{ind.plots.cwres.hist}()},
\code{\link{ind.plots.cwres.qq}()},
\code{\link{ipred.vs.idv}()},
\code{\link{iwres.dist.hist}()},
\code{\link{iwres.dist.qq}()},
\code{\link{iwres.vs.idv}()},
\code{\link{kaplan.plot}()},
\code{\link{par_cov_hist}},
\code{\link{par_cov_qq}},
\code{\link{parm.vs.cov}()},
\code{\link{parm.vs.parm}()},
\code{\link{pred.vs.idv}()},
\code{\link{ranpar.vs.cov}()},
\code{\link{runsum}()},
\code{\link{wres.dist.hist}()},
\code{\link{wres.dist.qq}()},
\code{\link{wres.vs.idv}()},
\code{\link{wres.vs.idv.bw}()},
\code{\link{wres.vs.pred}()},
\code{\link{wres.vs.pred.bw}()},
\code{\link{xpose.VPC}()},
\code{\link{xpose.VPC.both}()},
\code{\link{xpose.VPC.categorical}()},
\code{\link{xpose4-package}}
}
\concept{specific functions}
