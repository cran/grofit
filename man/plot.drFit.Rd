\name{plot.drFit}
\Rdversion{1.1}
\alias{plot.drFit}
\title{
Generic plot function for drFit objects
}
\description{
Generic plot function for \code{drFit} objects. Calls \code{\link{drFitSpline}} with respecting default values to visualize each dose response curve stored in the \code{drFit} object.
}
\usage{
\method{plot}{drFit}(x, ...)
}
\arguments{
  \item{x}{
Object of class \code{drFit}.
}
  \item{\dots}{
Other graphical parameters may also passed as arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\seealso{
\code{\link{drFit}}, \code{\link{drFitSpline}}
}
\examples{
# generate random growth curve data set
foo <- ran.data(100, 25)
time <- foo$time
data <- foo$data
# fit dose response curves
drData <- gcFit(time,data)
# use the output of gcFit as an input for drFit
drFit.result <- drFit(summary(drData))
plot(drFit.result)
}
