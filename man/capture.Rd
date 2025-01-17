% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/capture.R
\name{capture}
\alias{capture}
\title{Capture a plot}
\usage{
capture(expr, filename = "plot", ...)
}
\arguments{
\item{expr}{The plot() call.}
}
\description{
Saves a plot to a .png file
}
\examples{
capture(plot(rnorm(1e3)), filename = 'random_points')

}
