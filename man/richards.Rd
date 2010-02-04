\name{richards}
\Rdversion{1.1}
\alias{richards}
\title{
Richards growth law
}
\description{
The function calculates the values of the Richards growth curve for given time points.
}
\usage{
richards(time, A, mu, lambda, addpar)
}
\arguments{
  \item{time}{
Time points (x-axes) for which the function values will be returned.
}
  \item{A}{
Maximum of the curve. If a vector is provided only the first entry is used.
}
  \item{mu}{
Maximum slope. If a vector is provided only the first entry is used.
}
  \item{lambda}{
Lag-phase. If a vector is provided only the first entry is used.
}
  \item{addpar}{
Numeric vector of size one, corresponding to shape parameter \eqn{\nu}.
}
}
\details{
The function follows the parametrization
\deqn{y(t)=A\cdot\left[ 1+\nu\exp\left( 1+\nu + \frac{\mu}{A}(1+\nu)^{1+1/\nu}(\lambda-t) \right) \right]^{-1/\nu}}{A[1+nu exp(1+nu+mu/A (1+nu)^(1+1/nu)(lambda-t))^(-1/nu)]}
}
\value{
Numeric vector giving the values of Richards growth law for numeric input vector \code{time}.
}
\examples{
x <- 1:30
y <- richards(x, 10, 2, 5, 3)
plot(x,y)
}