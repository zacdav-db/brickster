% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-structures.R
\name{git_source}
\alias{git_source}
\title{Git Source for Job Notebook Tasks}
\usage{
git_source(
  git_url,
  git_provider,
  reference,
  type = c("branch", "tag", "commit")
)
}
\arguments{
\item{git_url}{URL of the repository to be cloned by this job. The maximum
length is 300 characters.}

\item{git_provider}{Unique identifier of the service used to host the Git
repository. Must be one of: \code{github}, \code{bitbucketcloud}, \code{azuredevopsservices},
\code{githubenterprise}, \code{bitbucketserver}, \code{gitlab}, \code{gitlabenterpriseedition},
\code{awscodecommit}.}

\item{reference}{Branch, tag, or commit to be checked out and used by this job.}

\item{type}{Type of reference being used, one of: \code{branch}, \code{tag}, \code{commit}.}
}
\description{
Git Source for Job Notebook Tasks
}
