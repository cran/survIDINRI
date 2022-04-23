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
Version: \tab 1.1-2\cr
Date: \tab 2022-4-23\cr
License: \tab GPL-2 \cr
}
}
\author{
Hajime Uno, Tianxi Cai

Maintainer: Hajime Uno <huno@jimmy.harvard.edu>
}

\references{
Pencina MJ, D'Agostino RB, Steyerberg EW. Extensions of net reclassification improvement calculations to measure usefulness of new biomarkers. Statistics in Medicine 2011. doi:10.1002/sim.5647

Uno H, Tian L, Cai T, Kohane IS, Wei LJ. A unified inference procedure for a class of measures to assess improvement in risk prediction systems with survival data, Statistics in Medicine 2012. doi:10.1002/sim.5647
}

\keyword{IDI}
\keyword{NRI}
\keyword{survival}

\seealso{survC1-package}

\examples{

  #--- sample data (pbc in survival package) ---
  D=subset(pbc, select=c("time","status","age","albumin","edema","protime","bili"))
  D$status=as.numeric(D$status==2)
  D=D[!is.na(apply(D,1,mean)),] ; dim(D)
  mydata=D[1:100,]

  t0=365*5
  indata1=mydata;
  indata0=mydata[,-7] ; n=nrow(D) ;
  covs1<-as.matrix(indata1[,c(-1,-2)])
  covs0<-as.matrix(indata0[,c(-1,-2)])

  #--- inference ---
  x<-IDI.INF(mydata[,1:2], covs0, covs1, t0, npert=200) ;

  #--- results ---
  IDI.INF.OUT(x) ;

  #--- Graphical presentaion of the estimates ---
  # IDI.INF.GRAPH(x) ;

}
