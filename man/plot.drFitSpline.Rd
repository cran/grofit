\name{plot.drFitSpline}
\Rdversion{1.1}
\alias{plot.drFitSpline}
\title{
Generic plot function for drFitSpline objects
}
\description{
Generic plot function for \code{drFitSpline} objects
}
\usage{
\method{plot}{drFitSpline}(x, add = FALSE, ec50line = TRUE,
                           pch = 1, colSpline = 1, colData = 1,
                           cex = 1, ...)
}
\arguments{
  \item{x}{
Object of class \code{drFitSpline}.
}
  \item{add}{
Logical, indicates wether the plot should be added to an existing plot device or plotted in a new window.
}
  \item{ec50line}{
Logical, indicates wether the EC50 value and respecting response values should be visualized by a dotted line.
}
  \item{pch}{
Numeric vector, describing plotting character used for plotting the raw data. Similar to the \code{pch} option from \code{\link{plot.default}}. The vector is recycled if the number of given data points differs from the length of the \code{pch}.
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
\code{\link{drFitSpline}}
}
\examples{
x <- 1:30
y <- 1/(1+exp(-0.5*(15-x)))+rnorm(30)/20
TestRun <- drFitSpline(x,y)
plot(TestRun, colData=c(1,3),pch=1:4,cex=3:5, colSpline=c("tomato"))
}
