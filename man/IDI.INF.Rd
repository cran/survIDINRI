\name{IDI.INF}
\alias{IDI.INF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Inference for IDI, continuous NRI, and median improvement
}
\description{This function performs inference for IDI, continuous NRI, and median improvement. Censoring is adjusted by the inverse probability censoring weight. Proportional hazards models are used as working models.
}
\usage{
IDI.INF(indata, covs0, covs1, t0, npert = 300,
npert.rand = NULL, seed1 = NULL, alpha = 0.05)
}

\arguments{
  \item{indata}{Time-to-event data. The number of columns should be 2. The 1st column should be time-to-event, and the 2nd column is event indicator (1=event, 0=censor).
}
  \item{covs0}{Covariates/predictors data for a base model (Model 0). Factor variables or character variables are not allowed. If any factor variable is involved in the set of predictors, use \code{model.matrix()} for dummy coding. \code{covs0} need to be a design matrix. Also missing value should not be included here.
}
  \item{covs1}{Covariates/predictors data for a new model (Model 0). Factor variables or character variables are not allowed. If any factor variable is involved in the set of predictors, use \code{model.matrix()} for dummy coding. \code{covs1} need to be a design matrix. Also missing value should not be included here.
}
  \item{t0}{A timepoint to define event=yes/no (case/control). Risk score is calculated as the event probability at \code{t0} for each model.
}
  \item{npert}{The number of iterations for the perturbation-resampling. Default is 300.
}
  \item{npert.rand}{If NULL (default), fresh random numbers will be generated in this routine. If a \code{(n x m)} matrix is given as \code{npert.rand}, those numbers are used in the pertubation instead, where \code{n} is the number of subjects and \code{m} is the number of iterations of the resampling. The random numbers should be generated from a distribution with mean 1 and variance 1 independently.
}
  \item{seed1}{A seed for generating random numbers for the perturbation-resampling. Default is NULL.
}
  \item{alpha}{(1-\code{alpha}/2) confidence interval will be calcualted. A 0.95 confidence interval will be provided as a default.
}
}
%\details{
%This function is for inference of IDI and NRI for evaluating the incremental %values of new markers with censored event time data.
%}

\value{
\item{m1 }{Result of IDI. Point and corresponding (1-alpha/2) confidence interval are given
}
\item{m2 }{Result of continuous-NRI. Point and corresponding (1-alpha/2) confidence interval are given. Note that \code{m2} corresponds to the quantity defined as ``1/2 NRI(>0)'' in Pencina et al.(2011)
}
\item{m3 }{Result of median improvement in risk score. Point and corresponding (1-alpha/2) confidence interval are given
}
\item{m1.est }{A vector with 3 elements. The 1st element is the point estimate of the IDI and the 2nd element is the average of risk score in ``event'' group, and the 3rd element is the average of risk score in ``non-event'' group. The 1st element is equal to the 2nd element minus the 3rd element.
}
\item{m2.est }{A vector with 3 elements. The 1st element is the point estimate of the continous-NRI. The 2nd element is the proportion of patients in whom the risk scores with the new model were higher than the risk scores with the old model, among ``event'' group. The 3rd element is the same proportion but among ``non-event'' group. The 1st element is equal to the 2nd element minus the 3rd element.
}
\item{m3.est }{A vector with 3 elements. The 1st element is the point estimate of the median improvement and the 2nd element is the median of risk score in ``event'' group, and the 3rd element is the median of risk score in ``non-event'' group. The 1st element is equal to the 2nd element minus the 3rd element.
}

\item{m3.est }{A vector with 3 elements. The 1st element is the point estimate of the median improvement and the 2nd element is the median of risk score in ``event'' group, and the 3rd element is the median of risk score in ``non-event'' group. The 1st element is equal to the 2nd element minus the 3rd element.
}

\item{point }{An object used in \code{IDI.INF.GRAPH()}
}

}

\references{
Pencina MJ, D'Agostino RB, Steyerberg EW. Extensions of net reclassification improvement calculations to measure usefulness of new biomarkers. Statistics in Medicine 2011. doi:10.1002/sim.5647

Uno H, Tian L, Cai T, Kohane IS, Wei LJ. A unified inference procedure for a class of measures to assess improvement in risk prediction systems with survival data, Statistics in Medicine 2012. doi:10.1002/sim.5647
}

%\author{Hajime Uno}

\note{\code{m2} corresponds to the quantity defined as ``1/2 NRI(>0)'' in Pencina et al.(2011)

When the base model and the new model are nested, make sure that regression coefficients for the added predictors are significantly different from 0 in the new model, before using this function.}

\seealso{Papers regarding the issue on evaluating nested models:

Kerr KF, McClelladm RL, Brown ER, Lumley T. Evaluating the Incremental Value of New Biomarkers With Integrated Discrimination Improvement American journal of epidemiology 2011, 174(3):364-74.

Demler OV, Pencina MJ, D'Agostino RB. Misuse of DeLong test to compare AUCs for nested models. Statistics in Medicine 2012; online ahead of print.

}

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
