\name{survIDINRI-package}
\alias{survIDINRI-package}
\alias{survIDINRI}
\docType{package}
\title{IDI and NRI for comparing competing risk prediction models with censored survival data
}
\description{Performs inference for a class of measures to compare competing risk prediction models with censored survival data. The class includes the integrated discrimination improvement index (IDI) and category-less net reclassification index (NRI). 
}
\details{
\tabular{ll}{
Package: \tab survIDINRI\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-07-13\cr
License: \tab GPL-2 \cr
}
}
\author{
Hajime Uno, Tianxi Cai

Maintainer: Hajime Uno <huno@jimmy.harvard.edu>
}

%\references{}

\keyword{IDI, NRI, survival}

\seealso{survC1-package}

\examples{

  #--- sample data (pbc in survival package) ---
  D=subset(pbc, select=c("time","status","age","albumin","edema","protime","bili"))
  D$status=as.numeric(D$status==2)
  mydata=D[!is.na(apply(D,1,mean)),] ; dim(D)  

  t0=365*5
  indata1=mydata; 
  indata0=mydata[,-7] ; n=nrow(D) ;
  covs1<-as.matrix(indata1[,c(-1,-2)])
  covs0<-as.matrix(indata0[,c(-1,-2)])

  #--- inference ---
  x<-IDI.INF(mydata[,1:2], covs0, covs1, t0, npert=300) ; 

  #--- results ---
  IDI.INF.OUT(x) ;

  #--- Graphical presentaion of the estimates ---
  IDI.INF.GRAPH(x) ;

}