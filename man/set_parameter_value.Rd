% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/14-bioenergetic-classes.R
\name{set_parameter_value}
\alias{set_parameter_value}
\title{Set Parameter Value}
\usage{
set_parameter_value(params, param, value)
}
\arguments{
\item{params}{Species parameters list}

\item{param}{Parameter name to set}

\item{value}{New parameter value}
}
\value{
Updated parameters list
}
\description{
Sets a specific parameter value in species parameter lists,
automatically finding the correct category.
}
\details{
Modifies parameter values in place, maintaining the original
structure of the parameters list. Throws an error if the
parameter is not found in any category.
}
\examples{
\dontrun{
# Modify a consumption parameter
new_params <- set_parameter_value(params, "CA", 0.35)

# Modify temperature optimum
new_params <- set_parameter_value(params, "CTO", 18)
}
}
