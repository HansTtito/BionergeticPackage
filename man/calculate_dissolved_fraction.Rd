% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/06-contaminant-accumulation.R
\name{calculate_dissolved_fraction}
\alias{calculate_dissolved_fraction}
\title{Calcular fracción disuelta del contaminante}
\usage{
calculate_dissolved_fraction(poc_concentration, doc_concentration, kow)
}
\arguments{
\item{poc_concentration}{Concentración de carbono orgánico particulado (kg/L)}

\item{doc_concentration}{Concentración de carbono orgánico disuelto (kg/L)}

\item{kow}{Coeficiente de partición octanol:agua}
}
\value{
Fracción disuelta
}
\description{
Calcula fracción disuelta basada en carbono orgánico según Arnot & Gobas (2004)
}
