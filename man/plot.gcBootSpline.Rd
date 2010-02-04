\name{plot.gcBootSpline}
\Rdversion{1.1}
\alias{plot.gcBootSpline}
\title{
Generic plot function for gcBootSpline objects
}
\description{
Generic plot function for \code{gcBootSpline} objects.
}
\usage{
\method{plot}{gcBootSpline}(x, pch = 1, colData = 1,
                            colSpline = 1, cex = 1, ...)
}
\arguments{
  \item{x}{
Object of class \code{gcBootSpline}.
}
  \item{pch}{
Numeric vector, describing plotting character used for plotting the raw data. Similar to the \code{pch} option from \code{\link{plot.default}}. The vector is recycled if the number of given data points differs from the length of the \code{pch}.
}
  \item{colData}{
Vector, describing the color used for plotting the raw data. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or (character) an element of \code{colors()}. The vector is recycled if the number of data points differ from the length of the \code{colData}.
}
  \item{colSpline}{
Vector, describing the color used for plotting the spline fit. Similar to the \code{col} option from \code{\link{plot.default}}. The values must be (numeric) from 0:8 or (character) an element of \code{colors()}. The vector is recycled if the number of spline fits differ from the length of the \code{colSpline}.
}
  \item{cex}{
Numeric vector, describing the character expansion used for plotting the raw data. Similar to the \code{cex} option from \code{\link{plot.default}}. The vector is recycled if the number of data points differ from the length of the \code{cex}.
}
  \item{\dots}{
Other graphical parameters may also passed as arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\seealso{
\code{\link{gcBootSpline}}
}
\examples{
x <- 1:30
y <- 1/(1+exp(0.5*(15-x)))+rnorm(30)/20
TestRun <- gcBootSpline(x,y,"ID",grofit.control(nboot.gc=50))
plot(TestRun, pch=2, cex=3, colData="steelblue",
     colSpline=c("orchid", "orchid1", "orchid2", "orchid3", "orchid4"))
}
