% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/databricks-helpers.R
\name{determine_brickster_venv}
\alias{determine_brickster_venv}
\title{Determine brickster virtualenv}
\usage{
determine_brickster_venv()
}
\description{
Determine brickster virtualenv
}
\details{
Returns \code{NULL} when running within Databricks,
otherwise \code{"r-brickster"}
}
\keyword{internal}
