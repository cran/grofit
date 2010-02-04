\name{gompertz}
\Rdversion{1.1}
\alias{gompertz}
\title{
Gompertz growth law
}
\description{
The function calculates the values of the Gompertz growth curve for given time points.
}
\usage{
gompertz(time, A, mu, lambda, addpar = NULL)
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
Additional parameters have no effect in this type of model. They belong to the standard model description in \code{grofit} and are initialized as \code{addpar=NULL} in the function header.}
}
\details{
The function follows the parametrization
\deqn{y(t)=A\cdot\exp\left[-\exp\left(\frac{\mu\cdot\exp(1)}{A}(\lambda-t)+1\right)\right]}{A exp[-exp(mu exp(1)/A(lambda-t)+1)]}
}
\value{
Numeric vector giving the values of Gompertz growth law for numeric input vector \code{time}.
}
\examples{
x <- 1:30
y <- gompertz(x, 10, 2, 5)
plot(x,y)
}