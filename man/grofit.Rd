\name{grofit}
\Rdversion{1.1}
\alias{grofit}
\title{
Standard workflow
}
\description{
The function enables the user to run all features of the \pkg{grofit} package as a standard workflow. First several growth curves are fitted by usage of the function \link{gcFit}. Afterwards respecting dose-response curves are estimated from by the function \link{drFit}.
}
\usage{
grofit(time, data, ec50 = FALSE, control = grofit.control())
}
\arguments{
  \item{time}{
Numeric matrix, consisting of n columns for the time points and m rows for the different experiments. 
}
  \item{data}{
Data frame consisting of 3+n columns, containing three coulumns of additional information and n columns of growth data corresponding to \code{time}. 1. column, character as an experiment identifier; 2. column: character, additional information about respecting experiment; 3. column: concentration of substrate of a compound under which the experiment is obtained; 4.-(n+3). column: growth data corresponding to the time points in \code{time}.
}
  \item{ec50}{
Logical, indicating wether dose-response curves and EC50 should be estimated after the growth curve fit.
}
  \item{control}{
Object of class \code{grofit.control} containing a list of options specified by \code{\link{grofit.control}}.
}
}
\value{
\item{time}{Numeric matrix, equivalent to input parameter \code{time}.}
\item{data}{Data frame, equivalent to input parameter \code{data}.}
\item{gcFit}{Object of class \code{gcFit}.}
\item{drFit}{Object of class \code{drFit}.}
\item{control}{Object of class \code{grofit.control} containing a list of options passed to the function as \code{control}.}
}
\seealso{
\code{\link{grofit.time}}, \code{\link{grofit.data}}
}
