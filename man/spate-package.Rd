\name{spate-package}
\alias{spate-package}
\alias{spate}
\docType{package}
\title{
  Spatio-temporal modeling of large data with the spectral SPDE approach
}
\description{This is an R package for spatio-temporal modeling of large data sets. It provides tools for modeling of Gaussian processes in space and time defined through a stochastic partial differential equation (SPDE). The SPDE is solved in the spectral space, and after discretizing in time and space, a linear Gaussian state space model is obtained. When doing inference, the main computational difficulty consists in evaluating the likelihood and in sampling from the full conditional of the spectral coefficients, or equivalently, the latent space-time process. In comparison to the traditional approach of using a spatio-temporal covariance function, the spectral SPDE approach is computationally advantageous. This package aims at providing tools for two different modeling approaches. First, the SPDE based spatio-temporal model can be used as a component in a customized hierarchical Bayesian model (HBM). The functions of the package then provide parametrizations of the process part of the model as well as computationally efficient algorithms needed for doing inference with the HBM. Alternatively, the adaptive MCMC algorithm implemented in the package can be used as an algorithm for doing inference without any additional modeling. The MCMC algorithm supports data that follow a Gaussian or a censored distribution with point mass at zero. Covariates can be included in the model through a regression term.
}
\details{
\tabular{ll}{
Package: \tab spate\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-10-05\cr
License: \tab GPL-2\cr
}
}
\author{
Fabio Sigrist, Hans R. Kuensch, Werner A. Stahel

Maintainer: Fabio Sigrist <sigrist@stat.math.ethz.ch> 
}
\references{
  Fabio Sigrist, Hans R. K\"unsch, and Werner A. Stahel, "SPDE base
  modeling of large space-time data sets" (preprint)
}

\keyword{ package }

