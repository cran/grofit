\name{plot.drBootSpline}
\Rdversion{1.1}
\alias{plot.drBootSpline}
\title{
Generic plot function for drBootSpline objects
}
\description{
Generic plot function for \code{drBootSpline} objects. Plots the raw data and all generated dose-response curves. Also plots a histogram of the EC50 estimates. The function makes use of the \code{\link{plot.drFitSpline}} function.
}
\usage{
\method{plot}{drBootSpline}(x, pch = 1, colData = 1, colSpline = 1, cex = 1, ...)
}
\arguments{
  \item{x}{
\code{drFitSpline} object
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
\code{link{drBootSpline}}
}
\examples{
# generate random data set
data <- ran.data(100,25)
time <- data$time
data <- data$data
# call grofit
TestRun<-grofit(time,data,TRUE,grofit.control(nboot.dr=50))
# plot dose-reponse curve sample
plot(TestRun$drFit$drBootSplines[[1]], colData=c(1,3),pch=1:4,cex=3:5,
     colSpline=c("tomato", "tomato1", "tomato2", "tomato3", "tomato4"))
}
