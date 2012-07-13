\name{Ghat.FUN}
\alias{Ghat.FUN}
\title{Estimating survival fucntion for censoring time
}
\description{
Returns a survival function for cenring time
}
\usage{
Ghat.FUN(tt, Ti, Di, type = "fl")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tt}{A vector. The survival rate will be calculated at each time point given as an element of this vector.
}
  \item{Ti}{Time-to-event variable
}
  \item{Di}{Event indicator (1:event, 0:censor)
}
  \item{type}{An argument used in \code{survfit()}. See \code{survfit()} 
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
