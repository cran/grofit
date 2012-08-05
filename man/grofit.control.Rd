\name{grofit.control}
\Rdversion{1.1}
\alias{grofit.control}
\title{
Function to set all available grofit options
}
\description{
The function generates an object of class \code{grofit.control} with the different \pkg{grofit} options and also allows to change these options. 
}
\usage{
grofit.control(neg.nan.act = FALSE, clean.bootstrap = TRUE,
               suppress.messages = FALSE, fit.opt = "b",
               log.x.gc = FALSE, log.y.gc = FALSE,
               interactive = TRUE, nboot.gc = 0,
               smooth.gc= NULL, model.type=c("logistic",
               "richards","gompertz", "gompertz.exp"),
               have.atleast = 6, parameter = 9, smooth.dr = NULL,
               log.x.dr = FALSE, log.y.dr = FALSE, nboot.dr = 0)
}
\arguments{
  \item{neg.nan.act}{
Logical, indicates wether the program should stop when negative growth values or \code{NA} values appear (\code{TRUE}). Otherwise the program removes this values silently (\code{FALSE}). Improper values may be caused by incorrect data or input errors. Default: \code{FALSE}.
}
  \item{clean.bootstrap}{
Logical, determines if negative values which occur during bootstrap should be removed (\code{TRUE}) or kept (\code{FALSE}). Note: Infinite values are always removed. Default: \code{TRUE}.
}
  \item{suppress.messages}{
Logical, indicates wether \code{grofit} messages (information about current growth curve, EC50 values etc.) should be displayed (\code{FALSE}) or not (\code{TRUE}). This option is meant to speed up the processing of high throuput data. Note: warnings are still displayed. Default: \code{FALSE}.
}
  \item{fit.opt}{
Indicates wether the program should perform a model fit ("m"), a spline fit ("s") or both ("b"). Default: "b".
}
  \item{log.x.gc}{
Logical, indicates wether a \eqn{\ln(x+1)}{ln(x+1)} should be applied to the time data of the growth curves. Default: \code{FALSE}.
}
  \item{log.y.gc}{
Logical, indicates wether a \eqn{\ln(y+1)}{ln(y+1)} should be applied to the growth data of the growth curves. Default: \code{FALSE}.
}
  \item{interactive}{
Logical, controls whether the fit of each  growth curve is controlled manually by the user. Default: \code{TRUE}.
}
  \item{nboot.gc}{
Number of bootstrap samples used for the
model free growth curve fitting. Use \code{nboot.gc=0} to disable the bootstrap. Default: \code{0}.
}
  \item{smooth.gc}{Parameter describing the smoothness of the spline fit; usually (not necessary) in (0;1]. Set \code{smooth.gc=NULL} causes the program to query an optimal value via cross validation techniques. Note: This is partly experimental. In future improved implementations of the \code{\link{smooth.spline}} function may lead to different results. See documentation of the R function \code{\link{smooth.spline}} for further details. Especially for datasets with few data points the option \code{NULL} might result in a too small smoothing parameter, which produces an error in \code{\link{smooth.spline}}. In that case the usage of a fixed value is recommended. 
Default: \code{NULL}.
}
  \item{model.type}{
Character vector giving the names of the parametric models which should be fitted to the data. Default: \code{c("gompertz", "logistic", "gompertz.exp", "richards")}.
}
  \item{have.atleast}{
Minimum number of different values for the response parameter one shoud have for estimating a dose response curve. Note: All fit procedures require at least six
unique values. Default: \code{6}.
}
  \item{parameter}{
The column of the output table which should be used for creating a dose response curve. See documentation of \code{\link{gcFit}},  \code{\link{drFit}} or \code{\link{summary.gcFit}} for further details. Default: \code{9}, which represents the maximum slope of the parametric growth curve fit.
}
  \item{smooth.dr}{
Smoothing parameter used in the spline fit by \code{\link{smooth.spline}} during dose response curve estimation. Usually (not necessesary) in (0; 1]. See documentation of \code{\link{smooth.spline}} for further details. Default: \code{NULL}.
}
  \item{log.x.dr}{
Logical, indicates wether a \eqn{\ln(x+1)}{ln(x+1)} should be applied to the concentration data of the dose response curves. Default: \code{FALSE}.
}
  \item{log.y.dr}{
Logical, indicates wether a \eqn{\ln(y+1)}{ln(y+1)} should be applied to the response data of the dose response curves. Default: \code{FALSE}.
}
  \item{nboot.dr}{
Numeric value, defining the number of bootstrap samples for EC50 estimation. Use \code{nboot.dr=0} to disable bootstrapping. Default: \code{0}.
}
}
\value{
Generates a list containing the entrys described above.
}
\examples{
# default option
DefOpt <- grofit.control()
# user defined
MyOpt <- grofit.control(smooth.gc=0.5, model.type=c("gompertz", "logistic"))
}

