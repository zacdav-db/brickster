% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sql-query-execution.R
\name{db_sql_exec_status}
\alias{db_sql_exec_status}
\title{Get SQL Query Status}
\usage{
db_sql_exec_status(
  statement_id,
  host = db_host(),
  token = db_token(),
  perform_request = TRUE
)
}
\arguments{
\item{statement_id}{String, query execution \code{statement_id}}

\item{host}{Databricks workspace URL, defaults to calling \code{\link[=db_host]{db_host()}}.}

\item{token}{Databricks workspace token, defaults to calling \code{\link[=db_token]{db_token()}}.}

\item{perform_request}{If \code{TRUE} (default) the request is performed, if
\code{FALSE} the httr2 request is returned \emph{without} being performed.}
}
\description{
Get SQL Query Status
}
\details{
This request can be used to poll for the statement's status.
When the \code{status.state} field is \code{SUCCEEDED} it will also return the result
manifest and the first chunk of the result data.

When the statement is in the terminal states \code{CANCELED}, \code{CLOSED} or
\code{FAILED}, it returns HTTP \code{200} with the state set.

After at least 12 hours in terminal state, the statement is removed from the
warehouse and further calls will receive an HTTP \code{404} response.

\href{https://docs.databricks.com/api/workspace/statementexecution/getstatement}{Read more on Databricks API docs}
}
\seealso{
Other SQL Execution APIs: 
\code{\link{db_sql_exec_cancel}()},
\code{\link{db_sql_exec_query}()},
\code{\link{db_sql_exec_result}()}
}
\concept{SQL Execution APIs}
