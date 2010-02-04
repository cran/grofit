\name{plot.gcFit}
\Rdversion{1.1}
\alias{plot.gcFit}
\title{
Generic plot function for gcFit objects
}
\description{
Generic plot function for \code{gcFit} objects.
}
\usage{
\method{plot}{gcFit}(x, opt = "m", raw = TRUE, slope = FALSE,
                     pch = 1, colModel = 1, colSpline = 2,
                     colData = 1, cex = 1, ...)
}
\arguments{
  \item{x}{
Object of class \code{gcFit}.
}
  \item{opt}{
Character, indicating wether all available model fits (\code{"s"}) or spline fits (\code{"s"}) should be plotted.
}
  \item{raw}{
Logical, indicating wether the raw data should be plotted or not.
}
  \item{slope}{
Logical, indicating wether the tangent of maximal slope should be plotted or not.
}
  \item{pch}{
Numeric vector, describing plotting character used for plotting the raw data. Similar to the \code{pch} option from \code{\link{plot.default}}. The vector is recycled if the number of given data points differs from the length of the \code{pch}.
}
  \item{colModel}{
Vector, describing the color used for plotting the spline fit. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or (character) an element of \code{colors()}.
}
  \item{colSpline}{
Vector, describing the color used for plotting the spline fit. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or (character) an element of \code{colors()}.
}
  \item{colData}{
Vector, describing the color used for plotting the raw data. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or (character) an element of \code{colors()}. The vector is recycled if the number of data points differ from the length of the \code{colData}.
}
  \item{cex}{
Numeric vector, describing the character expansion used for plotting the raw data. Similar to the \code{cex} option from \code{\link{plot.default}}. The vector is recycled if the number of data points differ from the length of the \code{cex}.
}
  \item{\dots}{
Other graphical parameters may also passed as arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\seealso{
\code{\link{gcFit}}, \code{\link{plot.gcFitSpline}}, \code{\link{plot.gcFitModel}}
}
\examples{
data(grofit.time)
data(grofit.data)
TestRun <- gcFit(grofit.time, grofit.data)
x11(width=10,height=5)
par(mfrow=c(1,2))
plot(TestRun, opt="s", pch=1:7, cex=1, colSpline=2, colData=1:7)
title("Spline fit")
plot(TestRun, opt="m", pch=1:7, cex=1, colModel=1, colData=1:7)
title("Model fit")
par(mfrow=c(1,1))
}

