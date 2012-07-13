\name{SUM.I}
\alias{SUM.I}
\title{A child function used in \code{PI.k.FUN()} in this package}
\description{This is a child function called in \code{PI.k.FUN()} in this package. 
For a given vector, yy, the function returns sum_i I(yy < Yi)*Vi or sum_i I(yy <= Yi)*Vi}

\usage{
SUM.I(yy, FUN, Yi, Vi = NULL)
}
\arguments{
  \item{yy}{A vector
}
  \item{FUN}{"<" or "<="
}
  \item{Yi}{A vector
}  
  \item{Vi}{Can be a vector with the same length as \code{Yi} or a matrix (the number of rows should be the same as the length of \code{Yi})
}
}

\details{
}

\value{
The value returned is 

sum_i I(yy < Yi)*Vi (if FUN="<") or

sum_i I(yy <= Yi)*Vi (if FUN="<=")

}

\references{

}

\author{

}
\note{

}


\seealso{

}
\examples{

yy=c(1,3,5)
Yi=c(1,2,3,4,5)
FUN="<"
SUM.I(yy,FUN,Yi)

Vi=matrix(10, 5, 3)
SUM.I(yy,FUN,Yi,Vi=Vi)

}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
