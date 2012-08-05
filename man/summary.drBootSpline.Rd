\name{summary.drBootSpline}
\Rdversion{1.1}
\alias{summary.drBootSpline}
\title{
Generic summary function for drBootSpline object
}
\description{
Generic summary function for \code{drBootSpline} object. Generates a \code{data.frame} of mean EC50, standard deviation and confidence intervals from a bootstrap sample of dose-response curves.
}
\usage{
\method{summary}{drBootSpline}(object, ...)
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
\item{data.frame}{1.-2. column: numeric, mean and standard dev. from bootstrap sample; 3.-6. column: 90 and 95 percent confidence interval from bootstrap sample; 7. column: mean EC50 of bootstrap sample in original scale; 8.-11. 90 and 95 percent confidence interval in original scale.}
}
\seealso{
\code{\link{drBootSpline}}, \code{\link{drFit}}, \code{\link{summary.drFit}}
}
