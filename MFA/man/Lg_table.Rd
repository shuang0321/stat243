% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Lg_table.R
\name{Lg_table}
\alias{Lg_table}
\title{Compute Lg coefficient between tables}
\usage{
Lg_table(dataset, sets, center = TRUE, scale = TRUE)
}
\arguments{
\item{dataset}{- dataset}

\item{sets}{- the list of table}

\item{center}{- logical argument, whether to be centered}

\item{scale}{- logical argument, whether to be scaled}
}
\value{
lg - the matrix of rv coefficient
}
\description{
This function gets the matrix of lg coefficient
}
\examples{
lg.table <- Lg_table(mtcars,sets=list(1:3,4:6,7:8,9:11),center=TRUE,scale=TRUE)
}

