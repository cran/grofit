\name{summary.gcFitSpline}
\Rdversion{1.1}
\alias{summary.gcFitSpline}
\title{
Generic summary function for gcFitSpline object
}
\description{
Generic summary function for \code{gcFitSpline} object.
}
\usage{
\method{summary}{gcFitSpline}(object, ...)
}
\arguments{
  \item{object}{
Object of class \code{gcFitSpline}.
}
  \item{\dots}{
Additional arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\value{
\item{data.frame}{1.-4. column: estimates of \eqn{\mu}, \eqn{\lambda}, \eqn{A} and \eqn{integral} from growth curve fit.}
}
\seealso{
\code{\link{gcFitSpline}}, \code{\link{gcFit}}
}
