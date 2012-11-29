\name{spate.sim}
\alias{spate.sim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
 Simulate from the SPDE.
}
\description{
 Generates one sample from the Gaussian process specified through the SPDE.
}
\usage{
spate.sim(par,n,T,seed=NULL,StartVal=NULL,nu=1)
}
\arguments{
  \item{par}{
 Vector of parameters for the SPDE in the following order: rho_0, sigma^2, zeta,
 rho_1, gamma, alpha, mu_x, mu_y, tau^2. rho_0 and sigma^2 are the range
 and marginal variance of the Matern covariance funtion for the
 innovation term epsilon. zeta is the damping parameter. rho_1, gamma,
 and alpha parametrize the diffusion matrix with rho_1 being a range
 parameter, gamma and alpha determining the amount and the direction,
 respectively, of anisotropy. mu_x and mu_y are the two components of
 the drift vector. tau^2 denotes the variance of nugget effect or measurment error.
}
  \item{n}{
 Number of grid points on each axis. n x n is the total number of spatial points.
}
  \item{T}{
Number of points in time.
}
  \item{seed}{
 Seed for random number generator.
}
  \item{StartVal}{
A starting value (field) for the SPDE can be defined. This is the
spatial field at the initial time that get propagated forward by the
SPDE. The starting fields needs to be a stacked vector of lengths n x n (number
of spatial points). Use 'as.vector()' to convert a spatial matrix to a vector.
}
  \item{nu}{
Smoothness parameter of the Matern covariance function for the innovations. By
default this equals 1 corresponding to the Whittle covariance function.
}
}
\value{
A list containing a simulated spatio-temporal field xi with covariance structure as defined
through the SPDE, a simulated observation field w obtained by adding a
measurement error, and the simulated Fourier coefficients. The last two
are returned only on demand.
}
\author{
Fabio Sigrist
}
\examples{
spateSim <- spate.sim(par=c(rho0=0.1,sigma2=1,zeta=0.1,rho1=0.005,gamma=2,
                      alpha=pi/4,muX=0.2,muY=0.2,tau2=0.01),n=50,T=9)
plot(spateSim)
}
