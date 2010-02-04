\name{ran.data}
\Rdversion{1.1}
\alias{ran.data}
\title{
Function to generate example data for grofit
}
\description{
The function calls the \code{\link{gompertz}} function to generate curves between zero and \code{t} and adds some random noise to the x- and y-axes. The three parameters given as input values will be slightly changed to produce different growth curves. The resulting datasets can be used to test the \code{\link{grofit}} function.
}
\usage{
ran.data(d, t, mu = 1, lambda = 5, A = 15)
}
\arguments{
  \item{d}{
Numeric value, number of data sets. If \code{d} is a vector, only the first entry is used.
}
  \item{t}{
Numeric value, number of time points per data set. If \code{t} is a vector, only the first entry is used.
}
  \item{mu}{
Numeric value, maximum slope. If \code{mu} is a vector, only the first entry is used.
}
  \item{lambda}{
Numeric value, lag-phase. If \code{lambda} is a vector, only the first entry is used.
}
  \item{A}{
Numeric value, maximum growth level. If \code{A} is a vector, only the first entry is used.
}
}
\details{
The function generates two datasets according to the standard input of \code{\link{grofit}} and \code{\link{gcFit}}.
}
\value{
\item{time}{numeric matrix of size \code{d}x\code{t}, each row represent the time points for which growth data is simulated and stored in each row of \code{data}.}
\item{data}{data.frame of size \code{d}x(3+\code{t}), 1. column, character as an experiment identifier; 2. column: character, additional information about respecting experiment; 3. column: concentration of substrate of a compound under which the experiment is obtained; 4.-(3+t). column: growth data corresponding to the time points in \code{time}.}
}
\seealso{
\link{grofit.time}, \link{grofit.data}
}

