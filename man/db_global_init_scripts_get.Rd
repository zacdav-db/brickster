% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/global-init-scripts.R
\name{db_global_init_scripts_get}
\alias{db_global_init_scripts_get}
\title{Get a Global Init Script}
\usage{
db_global_init_scripts_get(
  script_id,
  host = db_host(),
  token = db_token(),
  perform_request = TRUE
)
}
\arguments{
\item{script_id}{String, the ID of the global init script.}

\item{host}{Databricks workspace URL, defaults to calling \code{\link[=db_host]{db_host()}}.}

\item{token}{Databricks workspace token, defaults to calling \code{\link[=db_token]{db_token()}}.}

\item{perform_request}{If \code{TRUE} (default) the request is performed, if
\code{FALSE} the httr2 request is returned \emph{without} being performed.}
}
\description{
Get all the details of a script, including its Base64-encoded contents.
}
\details{
Base64-encoded contents are converted to character automatically.
}
\seealso{
Other Global Init Script API: 
\code{\link{db_global_init_scripts_create}()},
\code{\link{db_global_init_scripts_delete}()},
\code{\link{db_global_init_scripts_list}()},
\code{\link{db_global_init_scripts_update}()}
}
\concept{Global Init Script API}
