% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weighingGauge1.R
\name{weighingGauge1}
\alias{weighingGauge1}
\title{Fills gaps in weighing gauge precipitation data}
\usage{
weighingGauge1(obs, precipCol = 1, maxGapLength = 5, quiet = TRUE,
  logfile = "")
}
\arguments{
\item{obs}{Required. A standard \pkg{CRHMr} obs file.}

\item{precipCol}{Optional. The number of the column containing the weighing gauge cumulative precipitation data, not including the \code{datetime}. Default is column 1. These values are cumulative preciptiation.}

\item{maxGapLength}{Optional. The maximum gap length included in the analysis (in time intervals). Default is 5 time intervals. Used by \code{interpolate}.}

\item{quiet}{Optional. Suppresses display of messages, except for errors. If you are calling this function in an \R script, you will usually leave \code{quiet=TRUE} (i.e. the default). If you are working interactively, you will probably want to set \code{quiet=FALSE}.}

\item{logfile}{Optional. Name of the file to be used for logging the action. Normally not used.}
}
\value{
If unsuccessful, returns \code{FALSE}. If sucessful, returns a modified version of the \code{obs} dataframe containing only the datetime and the gap-filled total precipitation values.
}
\description{
This method fills missing values in accumulated precipitation data from a weighing gauge using linear interpoaltion. This function is a wrapper for functions and was suggested by Craig Smith. This function need not be called if your data does not contain any gaps. It is a good idea to use \code{weighingGaugePlot} to look at your data before calling this function.
}
\note{
This version does not explicitly incorporate the effects of evaporation.
}
\examples{
\dontrun{
test1 <- weighingGauge1(wg,  maxGapLength=6)}

}
\seealso{
\code{\link{weighingGauge2}} \code{\link{weighingGauge3}} \code{\link{weighingGauge4}} \code{\link{weighingGaugePlot}} \code{\link{weighingGaugeInterval}}
}
\author{
Kevin Shook
}
