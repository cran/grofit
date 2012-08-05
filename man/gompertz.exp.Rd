\name{gompertz.exp}
\Rdversion{1.1}
\alias{gompertz.exp}
\title{
Modified Gompertz growth law
}
\description{
The function calculates the values of the modified Gompertz growth curve for given time points.
}
\usage{
gompertz.exp(time, A, mu, lambda, addpar)
}
\arguments{
  \item{time}{
Time points (x-axes) for which the function values will be returned
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
Numeric vector of size two, addpar[1] corresponds to scaling parameter \eqn{\alpha} and addpar[2] corresponds to shifting parameter \eqn{t_{shift}}.
}
}
\details{
The function follows the parametrization
\deqn{y(t)=A\cdot\exp\left[-\exp\left(\frac{\mu\cdot\exp(1)}{A}(\lambda-t)+1\right)\right]+A\cdot\exp(\alpha(t-t_{shift}))}{A exp[-exp(mu exp(1)/A(lambda-t)+1)]+A exp(alpha(t-t_shift))}
}
\value{
Numeric vector giving the values of modified Gompertz growth law for numeric input vector \code{time}.
}
\examples{
x <- 1:30
y <- gompertz.exp(x, 10, 2, 5, c(1,2))
plot(x,y)
}