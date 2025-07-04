% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/14-bioenergetic-classes.R
\name{get_summary}
\alias{get_summary}
\title{Extract Summary from fb4_result Object}
\usage{
get_summary(x)
}
\arguments{
\item{x}{Object of class fb4_result}
}
\value{
List with summary results and metadata
}
\description{
Extracts summary statistics from fb4_result objects with additional
metadata for comprehensive result interpretation.
}
\details{
The summary includes:
\itemize{
  \item{Growth metrics: }{Final weight, total growth, growth rates}
  \item{Simulation metadata: }{Species, methods, execution details}
  \item{Model performance: }{Fit success, convergence information}
  \item{Temporal scope: }{Simulation period and duration}
}
}
\examples{
\dontrun{
result <- run_fb4(bio_obj, fit_to = "Weight", fit_value = 50)
summary_info <- get_summary(result)
print(summary_info$final_weight)
}
}
