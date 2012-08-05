\name{summary.drFitSpline}
\Rdversion{1.1}
\alias{summary.drFitSpline}
\title{
Generic summary function for drFitSpline object
}
\description{
Generic summary function for \code{drFitSpline} object. Generates a \code{data.frame} with EC50 value and respecting reponse value in transformed and original scale.
}
\usage{
\method{summary}{drFitSpline}(object, ...)
}
\arguments{
  \item{object}{
Object of class \code{drFitSpline}.
}
  \item{\dots}{
Additional arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\value{
\item{data.frame}{1.-2. column: numeric, estimated EC50 value and respecting reponse value; 3.-4. column: EC50 and response in original scale when a transformation is applied.}
}
\seealso{
\code{\link{drFit}}, \code{\link{summary.drFitSpline}}, \code{\link{summary.drBootSpline}}
}