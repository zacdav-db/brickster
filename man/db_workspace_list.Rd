% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspaces.R
\name{db_workspace_list}
\alias{db_workspace_list}
\title{List Directory Contents (Workspaces)}
\usage{
db_workspace_list(
  path,
  host = db_host(),
  token = db_token(),
  perform_request = TRUE
)
}
\arguments{
\item{path}{Absolute path of the notebook or directory.}

\item{host}{Databricks workspace URL, defaults to calling \code{\link[=db_host]{db_host()}}.}

\item{token}{Databricks workspace token, defaults to calling \code{\link[=db_token]{db_token()}}.}

\item{perform_request}{If \code{TRUE} (default) the request is performed, if
\code{FALSE} the httr2 request is returned \emph{without} being performed.}
}
\description{
List Directory Contents (Workspaces)
}
\details{
List the contents of a directory, or the object if it is not a directory.
If the input path does not exist, this call returns an error
\code{RESOURCE_DOES_NOT_EXIST.}
}
\seealso{
Other Workspace API: 
\code{\link{db_workspace_delete}()},
\code{\link{db_workspace_export}()},
\code{\link{db_workspace_get_status}()},
\code{\link{db_workspace_import}()},
\code{\link{db_workspace_mkdirs}()}
}
\concept{Workspace API}
