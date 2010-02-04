\name{logistic}
\Rdversion{1.1}
\alias{logistic}
\title{
Logistic growth law
}
\description{
The function calculates the values of the logistic growth curve for given time points.
}
\usage{
logistic(time, A, mu, lambda, addpar = NULL)
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
Additional parameters have no effect in this type of model. They belong to the standard model description in \code{grofit} and are initialized as \code{addpar=NULL} in the function header.
}
}
\details{
The function follows the parametrization
\deqn{y(t)=\frac{A}{1+\exp\left(\frac{4\mu}{A}(\lambda-t)+2\right)}}{A/(1+exp((4 mu/A)(lambda-t)+1))}
}
\value{
Numeric vector giving the values of logistic growth law for numeric input vector \code{time}.
}
\examples{
x <- 1:30
y <- logistic(x, 10, 2, 5)
plot(x,y)
}