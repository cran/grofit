\name{low.integrate}
\Rdversion{1.1}
\alias{low.integrate}
\title{
Function to estimate the area under a curve given as respecting x and y(x) values
}
\description{
Approximates the integral of function by calculating the area under a smoothed spline fitted to the given \code{x} and \code{y(x)} values.
}
\usage{
low.integrate(x, y)
}
\arguments{
  \item{x}{
Numeric vector.
}
  \item{y}{
Numeric vector, corresponding to \code{x}.
}
}
\details{
The function uses the the R internal function \code{\link{smooth.spline}}.
}
\value{
Area under the smoothed spline.
}
\seealso{
\code{\link{smooth.spline}}
}