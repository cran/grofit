\name{grofit-package}
\Rdversion{1.1}
\alias{grofit-package}
\docType{package}
\title{
The package was developd to fit fit many growth curves obtained under different conditions.
}
\description{
The package was developed to fit fit many growth curves obtained under different conditions in order to derive a conclusive dose-repsonse curve, for instance for a compound that potentially affects growth. grofit fits data to different parametric models (function gcFitModel) and in addition provides a model free spline fit (function gcFitSpline) to circumvent systematic errors that might occur within application of parametric methods. This amendment increases the reliability of the characteristic parameters (e.g. lag phase, maximal growth rate, stationary phase) derived from a single growth curve. By relating obtained parameters to the respective condition (e.g. concentration of a compound) a dose response curve can be derived (function drFitSpline) that enables the calculation of descriptive pharma-/toxicological values like half maximum effective concentration (EC50). Bootstrap and cross-validation techniques are used for estimating confidence intervals of all derived parameters (functions gcBootSpline, drBootSpline).
}
\details{
\tabular{ll}{
Package: \tab grofit\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-12-08\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
The main functions are 
\tabular{ll}{
    \command{gcFitModel} \tab Fits certain growth laws to growth data.\cr
    \command{gcFitSpline} \tab Fits a smoothed spline to growth data.\cr
    \command{gcBootSpline} \tab Generates a bootstrap sample of fitted splines (growth curves).\cr
    \command{drFitModel} \tab Fits a smoothed spline to dose-response data.\cr
    \command{drBootSpline} \tab Generates a bootstrap sample of fitted splines (dose-response curves).\cr
}
}
\author{
Matthias Kahm, Maik Kschischo

Maintainer: Matthias Kahm <sysbio_software@rheinahrcampus.de>
}
\references{
C. Birch, (1999), A new Generalized Logistic Sigmoid Growth Equation Compared with the Richards Growth Equation, Annals of Botany, p. 713-723, vol. 83.

G. Hasenbrink, L. Kolacna, J. Ludwig, H. Sychrova, M. Kschischo and H. Lichtenberg-Frate, (2006), Ring Test Assessment of the mKir2.1 Growth Based Assay in Saccharomyces cerevisiae Using Parametric Models and Model-free Fits, Applied and Microbiology Biotechnology, p. 1212-1221, vol. 73.

M. H. Zwietering,  I. Jongenburger, F. M. Rombouts  and  K. van 'T Riet, (1990), Modeling of the Bacterial Growth Curve, Applied and Environmental Microbiology, p. 1875-1881, vol. 56.
}
\keyword{ package }