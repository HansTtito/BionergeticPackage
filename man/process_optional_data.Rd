% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/11-data-processing.R
\name{process_optional_data}
\alias{process_optional_data}
\title{Procesar datos opcionales}
\usage{
process_optional_data(
  environmental_data,
  reproduction_data = NULL,
  mortality_data = NULL,
  contaminant_data = NULL,
  nutrient_data = NULL
)
}
\arguments{
\item{environmental_data}{Resultado de process_input_data}

\item{reproduction_data}{Data frame con datos de reproducción (opcional)}

\item{mortality_data}{Data frame con datos de mortalidad (opcional)}

\item{contaminant_data}{Lista con datos de contaminantes (opcional)}

\item{nutrient_data}{Lista con datos de nutrientes (opcional)}
}
\value{
Lista con datos opcionales procesados
}
\description{
Procesa datos de reproducción, mortalidad, contaminantes y nutrientes
}
