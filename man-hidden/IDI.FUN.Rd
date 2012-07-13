\name{IDI.FUN}
\alias{IDI.FUN}
\title{Estimating IDI and other measures in the class
}
\description{Provides point estimates for IDI and other measures
}
\usage{
IDI.FUN(data, t0, pnew, pold, Wi = NULL, PTB.Vi = NULL)
}

\arguments{
  \item{data}{Time-to-event data for each individual. The 1st column should be time-to-event, and the 2nd column is event indicator (1=event, 0=censor). 
}
  \item{t0}{A timepoint to define event=yes/no. 
}
  \item{pnew}{The risk score (i.e.,the event probability at \code{t0}) derived from the new system. The values should be between 0 and 1. 
}
  \item{pold}{The risk score (i.e.,the event probability at \code{t0}) derived from the old system. The values should be between 0 and 1.
}
  \item{Wi}{Weight. If NULL (default), the inverse probability censoring weight is used automatically.
}
  \item{PTB.Vi}{Default is NULL. This argument is used internally, when this function is used in \code{PTB.IDI.FUN()}.  
}
}
\details{
}
\value{
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
