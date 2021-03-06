% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appendObs.R
\name{appendObs}
\alias{appendObs}
\title{Appends two CRHM obs data frames}
\usage{
appendObs(primaryObs, secondaryObs, trim = TRUE, quiet = TRUE,
  logfile = "")
}
\arguments{
\item{primaryObs}{Required. The primary \pkg{CRHMr} data frame of obs values.}

\item{secondaryObs}{Required. The secondary obs data frame. Note that both data frames must have the same time intervals.}

\item{trim}{Optional. If set to \code{TRUE} (the default) then rows missing all values at the beginnings and/or ends of the obs data frames will be omitted.}

\item{quiet}{Optional. Suppresses display of messages, except for errors. If you are calling this function in an \R script, you will usually leave \code{quiet=TRUE} (i.e. the default). If you are working interactively, you will probably want to set \code{quiet=FALSE}.}

\item{logfile}{Optional. Name of the file to be used for logging the action. Normally not used.}
}
\value{
If successful, returns a data frame of values combined from the \code{primaryObs} and \code{secondaryObs} data frames. If unsuccessful, returns the value \code{FALSE}.
}
\description{
This function joins two data frames of CRHM obs. The data frames must have the same number of columns, and the variables must be in the same order. The usual reason is for joining two data frames of differing periods. The primary and secondary data frames may be of any time periods. Where there are two values for a given datetime, the primary values are used. Rows of missing values at the beginning and end of the time series are deleted.
}
\note{
In addition to the usual notation in the logfile, this function also writes a separate file which summarises the new data frame. The summaries are also printed to the screen, if \code{quiet=FALSE}, the \code{logfile} also contains a complete listing of the source of each value in the infilled data frame. Each value is listed as being \option{primary} (from the \code{primaryObs} data frame), \option{secondary} (derived from the \code{secondaryObs} data frame) or \option{NA} (missing).
}
\examples{
\dontrun{
broadview <- appendObs(broad2855, broad2856)}
}
\author{
Kevin Shook
}
