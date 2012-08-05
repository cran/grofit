\name{plot.gcFitSpline}
\Rdversion{1.1}
\alias{plot.gcFitSpline}
\title{
Generic plot function for gcFitSpline objects
}
\description{
Generic plot function for \code{gcFitSpline} objects.
}
\usage{
\method{plot}{gcFitSpline}(x, add = FALSE, raw = TRUE,
                           slope = TRUE, pch = 1, colData=1,
                           colSpline=2, cex = 1, ...)
}
\arguments{
  \item{x}{
Object of class \code{gcFitSpline}.
}
  \item{add}{
Logical, indicates wether the plot should be added to an existing plot device or plotted in a new window.
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
  \item{colData}{
Vector, describing the color used for plotting the raw data. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or (character) an element of \code{colors()}. The vector is recycled if the number of data points differ from the length of the \code{colData}.
}
  \item{colSpline}{
Vector, describing the color used for plotting the spline fit and the tangent of maximal slope. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or an element of \code{colors() (character)}.
}
  \item{cex}{
Numeric vector, describing the character expansion used for plotting the raw data. Similar to the \code{cex} option from \code{\link{plot.default}}. The vector is recycled if the number of data points differ from the length of the \code{cex}.
}
  \item{\dots}{
Other graphical parameters may also passed as arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\seealso{
\code{\link{gcFitSpline}}
}
\examples{
# generate random data set
data <- ran.data(100,25)
time <- data$time
data <- data$data
# run growth curve fit
TestRun <- gcFit(time,data)
plot(TestRun$gcFittedSpline[[3]],
     colData=c("wheat","wheat2","wheat2","wheat3","wheat4"),
     colSpline=1,pch=4:7,cex=2:5)
}