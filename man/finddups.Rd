% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/finddups.R
\name{finddups}
\alias{finddups}
\title{This function finds duplicate markers in the main marker data object.}
\usage{
finddups(markerdata, threshold, filename)
}
\arguments{
\item{markerdata}{- main marker data file, produced by the readfile.R/readFile function}

\item{threshold}{(OPTIONAL) - similarity threshold to use to identify how similar two markers must be in order to be considered "identical".  If this is omitted, the default behavior is to find only markers which are exact duplicates, including that they must be missing data in the same spots.  Any other value omits any spot where data are missing (from either marker), so threshold = 100 will find markers that have the same calls in every spot where both markers contain data, threadhol = 99 will find markers that are 99percent similar in every spot where both markers contain data, etc.}

\item{filename}{(OPTIONAL) - path and output filename as a string, if the user wishes to save the list of duplicate markers to a file}
}
\value{
list of duplicate markers
}
\description{
Only exact duplicates are identified, meaning that the markers must have the same value in each location, and also must be missing data in the same locations.
 To remove the duplicate markers, see the removedups function.
}

