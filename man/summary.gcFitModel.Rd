\name{summary.gcFitModel}
\Rdversion{1.1}
\alias{summary.gcFitModel}
\title{
Generic summary function for gcFitModel object
}
\description{
Generic summary function for \code{gcFitModel} object.
}
\usage{
\method{summary}{gcFitModel}(object, ...)
}
\arguments{
  \item{object}{
Object of class \code{gcFitModel}.
}
  \item{\dots}{
Additional arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\value{
\item{data.frame}{1.-4. column: estimates of \eqn{\mu}, \eqn{\lambda}, \eqn{A} and \eqn{integral} from growth curve fit; 5.-7. column: respecting standard deviation for \eqn{\mu}, \eqn{\lambda}, \eqn{A}; 8.-13. column: 90 percent confidence intervals for\eqn{\mu}, \eqn{\lambda}, \eqn{A} ; 17.-24. column: 95 percent confidence intervals for \eqn{\mu}, \eqn{\lambda}, \eqn{A}.}
}
\seealso{
\code{\link{gcFitModel}}, \code{\link{gcFit}}
}
