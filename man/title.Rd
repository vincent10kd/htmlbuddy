% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/title.R
\name{title}
\alias{title}
\title{Display a title}
\usage{
title(text, size = "big", id = NULL, collapsible = TRUE)
}
\arguments{
\item{text}{The title to embed in an HTML page.}

\item{size}{One can choose between 'big' or anything else, in which case the font size will be smaller.}

\item{id}{Used to specify the div id of this title to which can be linked (e.g. from within a sidebar).}

\item{collapsible}{When TRUE, allows the user to toggle contents (anything following the title) to be visible or invisible.}
}
\description{
Display text formatted as a title.
}
\examples{
title('This is the title.')

}
