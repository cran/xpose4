# Xpose 4
# An R-based population pharmacokinetic/
# pharmacodynamic model building aid for NONMEM.
# Copyright (C) 1998-2004 E. Niclas Jonsson and Mats Karlsson.
# Copyright (C) 2005-2008 Andrew C. Hooker, Justin J. Wilkins, 
# Mats O. Karlsson and E. Niclas Jonsson.
# Copyright (C) 2009-2010 Andrew C. Hooker, Mats O. Karlsson and 
# E. Niclas Jonsson.

# This file is a part of Xpose 4.
# Xpose 4 is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License
# as published by the Free Software Foundation, either version 3
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with this program.  A copy can be cound in the R installation
# directory under \share\licenses. If not, see http://www.gnu.org/licenses/.

## Added by Justin Wilkins
## 28/11/2005



#' The generic Xpose functions for QQ plots
#' 
#' This is a wrapper function for the lattice \code{\link[lattice]{qqmath}}
#' function.
#' 
#' 
#' @param x A string or a vector of strings with the name(s) of the
#' x-variable(s).
#' @param object An "xpose.data" object.
#' @param inclZeroWRES A logical value indicating whether rows with WRES=0
#' should be plotted.
#' @param onlyfirst A logical value indicating whether only the first row per
#' individual should be included in the plot.
#' @param samp An integer between 1 and object@Nsim
#' (see\code{\link{xpose.data-class}}) specifying which of the simulated data
#' sets to extract from SData.
#' @param aspect The aspect ratio of the display (see
#' \code{\link[lattice]{qqmath}}).
#' @param scales A list to be used for the \code{scales} argument in
#' \code{\link[lattice]{qqmath}}.
#' @param by A string or a vector of strings with the name(s) of the
#' conditioning variables.
#' @param force.by.factor Logical value. If TRUE, and \code{by} is not
#' \code{NULL}, the variable specified by \code{by} is taken as categorical.
#' @param ordby A string with the name of a variable to be used to reorder any
#' factor conditioning variables (\code{by}). The variable is used in a call to
#' the \code{reorder} function.
#' @param byordfun The name of the function to be used when reordering a factor
#' conditioning variable (see argument \code{ordby}).
#' @param shingnum The number of shingles ("parts") a continuous conditioning
#' variable should be divided into.
#' @param shingol The amount of overlap between adjacent shingles (see argument
#' \code{shingnum}).
#' @param strip The name of the function to be used as the strip argument to
#' the \code{\link[lattice]{xyplot}}.
#' @param subset A string giving the subset expression to be applied to the
#' data before plotting. See \code{\link{xsubset}}.
#' @param main A string giving the plot title or \code{NULL} if none.
#' @param xlb A string giving the label for the x-axis. \code{NULL} if none.
#' @param ylb A string giving the label for the y-axis. \code{NULL} if none.
#' @param pch Plotting symbol.
#' @param col Color of plotting symbol.
#' @param cex Amount to scale the plotting character by.
#' @param abllty Line type for qqline.
#' @param abllwd Line width for qqline.
#' @param ablcol Color for qqline.
#' @param mirror Should we create mirror plots from simulation data?  Value can
#' be \code{FALSE}, \code{TRUE} or \code{1} for one mirror plot, or \code{3}
#' for three mirror plots.
#' @param max.plots.per.page The maximum number of plots per page that can be
#' created with the mirror plots.
#' @param mirror.aspect The aspect ratio of the plots used for mirror
#' functionality.
#' @param pass.plot.list Should we pass the list of plots created with mirror
#' or should we print them directly.  Values can be \code{TRUE/FALSE}.
#' @param x.cex The size of the x-axis label.
#' @param y.cex The size of the y-axis label.
#' @param main.cex The size of the title.
#' @param mirror.internal an internal mirror argument used in
#' \code{\link{create.mirror}}.  Checks if the \code{strip} argument from
#' \code{\link[lattice]{qqmath}} has been used.
#' @param \dots Other arguments passed to \code{\link{xpose.plot.qq}}.
#' @author E. Niclas Jonsson, Mats Karlsson, Andrew Hooker & Justin Wilkins
#' @seealso \code{\link{xpose.panel.qq}}, \code{\link[lattice]{qqmath}},
#' \code{\link[lattice]{panel.qqmathline}}, \code{\link{xpose.data-class}}
#' @keywords methods
#' @examples
#' 
#' \dontrun{
#' ## xpdb5 is an Xpose data object
#' ## We expect to find the required NONMEM run and table files for run
#' ## 5 in the current working directory
#' xpdb5 <- xpose.data(5)
#' 
#' ## A QQ plot of WRES
#' xpose.plot.qq("WRES", xpdb5) 
#' }
#' 
#' 
#' @export xpose.plot.qq
xpose.plot.qq <-
  function(x,object,
           inclZeroWRES = FALSE,
           onlyfirst    = FALSE,
           samp         = NULL, ## Check if this is needed
           aspect       = object@Prefs@Graph.prefs$aspect,
           scales       = list(),

           ## Conditioning settings
           by           = object@Prefs@Graph.prefs$condvar,
           force.by.factor = FALSE,
           ordby     = object@Prefs@Graph.prefs$ordby,
           byordfun  = object@Prefs@Graph.prefs$byordfun,
           shingnum  = object@Prefs@Graph.prefs$shingnum,
           shingol   = object@Prefs@Graph.prefs$shingol,
           strip = function(...)
           strip.default(...,strip.names=c(TRUE,TRUE)),
           ##par.strip.text=trellis.par.get("add.text"),

           ## Subset stuff
           subset       = xsubset(object),
           ## Axes and titles
           main  = xpose.create.title.hist(x,object,subset,...),
           ## main         = NULL,
           xlb          = "Quantiles of Normal",
           ylb          = paste("Quantiles of ",xlabel(x,object),sep=""),

           ## Colors and stuff
           pch=object@Prefs@Graph.prefs$pch,
           col=object@Prefs@Graph.prefs$col,
           cex=object@Prefs@Graph.prefs$cex,
           abllty = object@Prefs@Graph.prefs$abllty,
           abllwd = object@Prefs@Graph.prefs$abllwd,
           ablcol = object@Prefs@Graph.prefs$ablcol,
           ## mirror stuff
           mirror       = FALSE,
           max.plots.per.page=4,
           mirror.aspect="fill",
           pass.plot.list=FALSE,
           x.cex=NULL,
           y.cex=NULL,
           main.cex=NULL,
           mirror.internal=list(strip.missing=missing(strip)),
           ...) {

    
    plotTitle <- main

    ## for MIRROR functionality
    arg.list <- formals(xpose.plot.qq)
    arg.names <- names(arg.list)
    new.arg.list <- vector("list",length(arg.names))
    names(new.arg.list) <- arg.names
    for (argnam in arg.names){
      if (argnam=="..."){
        next
      }
      tmp <- get(argnam)
      if (is.null(tmp)){
      } else {
        new.arg.list[[argnam]]=tmp
      }
    }
    if (mirror){
      create.mirror(xpose.plot.qq,
                         new.arg.list,mirror,plotTitle,...)
    } else { # end if mirror


      ## x-label
                                        #if(!is.null(x)) {
                                        #  if(length(x)> 1) {
                                        #    xlb <- NULL
                                        #  } else {
                                        #    xlb <- label(x,object)
                                        #  }
                                        #}
      ## y-label
                                        #ylb <- ylb
      
      ##Get data
      if(!is.null(samp)) {
        data <- SData(object,inclZeroWRES,onlyfirst=onlyfirst,
                      subset=subset,samp=samp)
      } else {
        data <- Data(object,inclZeroWRES,onlyfirst=onlyfirst,subset=subset)
      }
      
      ## Strip "missing" data
      data <- subset(data, get(x) != object@Prefs@Miss)
      
      if(any(is.null(data))) return("The subset expression is invalid!")

      ## Make sure by is a factor if requested
      if(!is.null(by) && force.by.factor) {
        for(b in by) {
          data[,b] <- as.factor(data[,b])
        }
      }

      ## Check to see if more that one x-variable
      if(length(x) > 1) {
        reps <-c(xvardef("id",object),xvardef("idlab",object),
                 xvardef("wres",object))
        
        if(!is.null(by)) reps <- c(reps,by)
        data <- xpose.stack(data,object,x,reps)
        object <- new("xpose.data",
                      Runno=object@Runno,
                      Data = NULL)
        Data(object) <- data

        onlyfirst = FALSE
        if(is.null(by)) {
          by <- "ind"
        } else {
          by <- c("ind",by)
        }

        x <- "values"
        scales=list(relation="free")
      }
      
      ## Collect the basic plot formula
      bb <- NULL
      if(any(is.null(by))) { ## No conditioning
        formel <- paste("~",x,sep="")
      } else {
        for(b in by) {
          bb <- c(bb,xlabel(b,object))
          
          if(!is.factor(data[,b])) {
            data[,b] <- equal.count(data[,b],number=shingnum,overl=shingol)
          } else {
            
            if(any(!is.null(ordby))) {
              data[,b] <- reorder(data[,b],data[,ordby],byordfun)
            }
            
            if(names(data[,b,drop=F])!="ind") {
              levels(data[,b]) <-
                paste(xlabel(names(data[,b,drop=F]),object),":",   ## Needs to be fixed
                      levels(data[,b]),sep="")
            }
            
          }
        }
        bys    <- paste(by,collapse="*")
        formel <-  paste("~",x,"|",bys,sep="")
      }

      if(missing(strip)) {
        strip <- function(var.name,...)
          strip.default(var.name=bb,strip.names=c(F,T),...)
      }

      #xvarnam <- x

      
      if(!is.null(x.cex)) {
        if (is.list(xlb)){
          xlb$cex=x.cex
        } else {
          xlb <- list(xlb,cex=x.cex)
        }
      }
      if(!is.null(y.cex)) {
        if (is.list(ylb)){
          ylb$cex=y.cex
        } else {
          ylb <- list(ylb,cex=y.cex)
        }
      }
      
      if(is.null(main)) {
      } else {
        if(!is.null(main.cex)) {
          if (is.list(main)){
            main$cex=main.cex
          } else {
            main <- list(main,cex=main.cex)
          }
        }
      }
      
      xplot <- qqmath(formula(formel),
                      data,
                      obj=object,
                                        #prepanel = function(x) {
                                        #  if(length(levs <- unique(x)) < object@Prefs@Cat.levels) {
                                        #    xlim <- as.character(sort(levs))
                                        #    return(list(xlim=xlim))
                                        #  } else {
                                        #    xlim <- range(x)
                                        #    return(list(xlim=xlim))
                                        #  }
                                        #},
                      panel=xpose.panel.qq,
                      aspect=aspect,
                      ylab=ylb,
                      xlab=xlb,
                      scales=scales,
                      main=main,
                      #xvarnam=xvarnam,
                      abllty = abllty,
                      abllwd = abllwd,
                      ablcol = ablcol,
                                        #border = hiborder,
                      pch=pch,
                      col=col,
                      cex=cex,
                      strip=strip,
                      ...)


      return(xplot)
    }
  }
