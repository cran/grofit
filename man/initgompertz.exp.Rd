\name{initgompertz.exp}
\Rdversion{1.1}
\alias{initgompertz.exp}
\title{
Function to generate initial values for parameter estimation
}
\description{
The function receives time points, growth data, values for \eqn{A}, \eqn{\mu} and \eqn{\lambda} and returns a list object which entrys are used as initial values in the nonlinear fit procedure \code{\link{nls}}. In this case the function is serve to define initial values for scaling parameter \eqn{\alpha} and shifting parameter \eqn{t_{shift}}
}
\usage{
initgompertz.exp(time, y, A, mu, lambda)
}
\arguments{
  \item{time}{
Time points.
}
  \item{y}{
Growth data.
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
}
\value{
\item{A}{Maximum of the curve.}
\item{mu}{Maximum slope.}
\item{lambda}{Lag-phase.}
\item{addpar}{Two element vector defining scaling parameter \eqn{\alpha} and shifting parameter \eqn{t_{shift}}.}
}
\seealso{
\code{\link{gompertz.exp}}, \code{\link{gcFitModel}}
}
