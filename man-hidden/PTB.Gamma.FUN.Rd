\name{PTB.Gamma.FUN}
\alias{PTB.Gamma.FUN}
\title{A child function used to perform a perturbation-resampling 
}
\description{A child function of another child function (\code{PTB.Est.HR.FUN})
}
\usage{
PTB.Gamma.FUN(Vi, data, t0, gammahat)
}

\arguments{
  \item{Vi}{A matrix of random numbers used for the pertubation
  }
  \item{data}{Input data. The 1st column should be time-to-event, and the 2nd column is event indicator (1=event, 0=censor). The rest of the columns are covariates/predictors of the model. No character variable or missing is allowed.
  }
  \item{t0}{A timepoint to define event=yes/no (case/control). The risk score is derived as the estimated event probability at \code{t0}.
  }
  \item{gammahat}{A vector of estiamtes for baseline cumulataive hazard estimate at \code{t0} and regression coeeficient
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
