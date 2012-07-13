\name{PTB.IDI.FUN}
\alias{PTB.IDI.FUN}
\title{A child function used in \code{IDI.INF} to perform inference of IDI and other mesures in the class}
\description{Provides asymptotic distributions of estimators for IDI and NRI and so on, via a pertubation approach. This function is used within \code{IDI.INF}.
}
\usage{
PTB.IDI.FUN(data, covs0, covs1, t0, estim0, estim1, kmc, est.hat, seed1 = NULL, npert = 300, npert.rand = NULL)
}
\arguments{
  \item{data}{Input data. The 1st column should be time-to-event, and the 2nd column is event indicator (1=event, 0=censor). 
}
  \item{covs0}{A matrix that consists of a set of predictors for a base model (Model 0)
}
  \item{covs1}{A matrix that consists of a set of predictors for a new model (Model 1)
}
  \item{t0}{A timepoint to define event=yes/no (case/control). The risk scores are derived as the event probability at \code{t0}.
}
  \item{estim0}{An object from \code{Est.HR.FUN} (for Model 0). 
}
  \item{estim1}{An object from \code{Est.HR.FUN} (for Model 1).
}
  \item{kmc}{An object from \code{kmcens}. This is used to calcuate the inverse probability of censoring time. 
}
  \item{est.hat}{An object from \code{IDI.FUN}.
}
  \item{seed1}{A seed for generating random numbers for the perturbation-resampling. Default is NULL. 
}
  \item{npert}{The number of iterations for the perturbation-resampling. Defaults is 300.
}
  \item{npert.rand}{If NULL (default), random numbers will be generated in this routine. If a (n x m) matrix (n x m) is given as \code{npert.rand}, those numbers are used in the pertubation instead, where n is the number of subjects and m is the number of iterations of the resampling.  
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
