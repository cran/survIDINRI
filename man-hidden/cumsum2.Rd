\name{cumsum2}
\alias{cumsum2}
\title{A child function used in another child function, \code{SUM.I} 
}
\description{
For a given matrix, \code{cumsum()} is applied to each column.
}
\usage{
cumsum2(mydat)
}
\arguments{
  \item{mydat}{A matrix.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A matrix of the same size as \code{mydat} 
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
x=matrix(1,5,5)
cumsum2(x)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
