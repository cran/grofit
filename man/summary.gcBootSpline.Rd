\name{summary.gcBootSpline}
\Rdversion{1.1}
\alias{summary.gcBootSpline}
\title{
Generic summary function for gcBootSpline object
}
\description{
Generic summary function for \code{gcBootSpline} object. Generates a \code{data.frame} including the mean, standard deviation and confidence intervals for the characteristic growth values from a bootstrap sample of a growth curve.
}
\usage{
\method{summary}{gcBootSpline}(object, ...)
}
\arguments{
  \item{object}{
Object of class \code{drBootSpline}.
}
  \item{\dots}{
Additional arguments. This has currently no effect and is only meant to fulfill the requirements of a generic function.
}
}
\value{
\item{data.frame}{1.-4. column: mean of \eqn{\mu}, \eqn{\lambda}, \eqn{A} and \eqn{integral} from bootstrap sample; 5.-8. column: respecting standard deviation; 9.-16. column: 90 percent confidence intervals for \eqn{\mu}, \eqn{\lambda}, \eqn{A} and \eqn{integral}; 17.-24. column: 95 percent confidence intervals for \eqn{\mu}, \eqn{\lambda}, \eqn{A} and \eqn{integral}.}
}
\seealso{
\code{\link{gcBootSpline}}, \code{\link{gcFit}}
}
