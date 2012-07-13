\name{PTB.Est.HR.FUN}
\alias{PTB.Est.HR.FUN}
\title{A child function used to perform a perturbation-resampling 
}
\description{A child function to perturb parameter estimates of the Cox model
}
\usage{
PTB.Est.HR.FUN(data, t0, Gi, estim)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{data}{Input data. The 1st column should be time-to-event, and the 2nd column is event
indicator (1=event, 0=censor). The rest of the columns are covariates/predictors
used in the model. No character variable or missing is allowed.
}
  \item{t0}{A timepoint to define event=yes/no (case/control). 
  The risk score is derived as the estimated event probability at \code{t0}.
}
  \item{Gi}{A matrix of random numbers used for the pertubation
}
  \item{estim}{An object from \code{Est.HR.FUN}
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
