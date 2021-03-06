% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extendObs.R
\name{extendObs}
\alias{extendObs}
\title{Extends an obs data frame}
\usage{
extendObs(obs, startDate = "", endDate = "", timezone = "",
  quiet = TRUE, logfile = "")
}
\arguments{
\item{obs}{Required. The \pkg{CRHMr} obs data frame to be extended.}

\item{startDate}{Optional. The starting date for the obs data frame. Can either be a year as a number (e.g. \code{1995}) or a date in \option{Y-m-d} format, i.e. \option{1995-06-01}. Either the startDate or the endDate, or both, must be specified.}

\item{endDate}{Optional. The ending date for the obs data frame.  Can either be a year as a number (e.g. \code{1995}) or a date in \option{Y-m-d} format, i.e. \option{1995-07-01}.}

\item{timezone}{Required. The name of the timezone of the data as a character string. This should be the timezone of your data, but omitting daylight savings time. Note that the timezone code is specific to your OS. To avoid problems, you should use a timezone without daylight savings time. Under Linux, you can use \option{CST} and \option{MST} for Central Standard or Mountain Standard time, respectively. Under Windows or OSX, you can use \option{etc/GMT+6} or \option{etc/GMT+7} for Central Standard and Mountain Standard time. DO NOT use \option{America/Regina} as the time zone, as it includes historical changes between standard and daylight savings time.}

\item{quiet}{Optional. Suppresses display of messages, except for errors. If you are calling this function in an \R script, you will usually leave \code{quiet=TRUE} (i.e. the default). If you are working interactively, you will probably want to set \code{quiet=FALSE}.}

\item{logfile}{Optional. Name of the file to be used for logging the action. Normally not used.}
}
\value{
If successful, returns a modified version of the obs data frame. The missing values in the specified data frame are replaced by \code{NA_real_} values. If unsuccessful, returns the value \code{FALSE}.
}
\description{
This function extends a \pkg{CRHMr} obs data frame to include the specified dates. All added values are set to be \code{NA_real_}. The purpose of this function is to create locations for data that can be infilled or imputed from another data set.
}
\examples{
BadLake7378 <- extendObs(BadLake7376, endDate='1978-01-01', timezone='CST')
}
\author{
Kevin Shook
}
