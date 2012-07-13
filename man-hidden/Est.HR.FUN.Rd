\name{Est.HR.FUN}
\alias{Est.HR.FUN}
\title{Fitting a proportional hazard model 
}
\description{Fits data to a Cox model and returns estimated risk scores
}
\usage{
Est.HR.FUN(data, t0, Gi = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{The 1st column should be time-to-event, and the 2nd column is event
indicator (1=event, 0=censor). The rest of the columns are covariates/predictors
used in the model. No character variable or missing is allowed. Note that the current version cannot handle factor variables. 
If any factor variable is involved in the set of predictors, use \code{model.matrix()} and generate a design matrix first.
}
  \item{t0}{A timepoint to define event=yes/no (case/control). 
  The risk score is derived as the estimated event probability at \code{t0}.
}
  \item{Gi}{Weight. Default is NULL
}
}
\details{

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
