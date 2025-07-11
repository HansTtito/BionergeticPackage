% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/10-main-growth-model.R
\name{calculate_daily_metabolism}
\alias{calculate_daily_metabolism}
\title{Calcular procesos metabólicos diarios}
\usage{
calculate_daily_metabolism(
  consumption_energy,
  current_weight,
  temperature,
  p_value,
  species_params,
  oxycal = 13560,
  diet_proportions = NULL,
  indigestible_fractions = NULL
)
}
\arguments{
\item{consumption_energy}{Consumo energético (J/g/día)}

\item{current_weight}{Peso actual (g)}

\item{temperature}{Temperatura (°C)}

\item{p_value}{P-value efectivo}

\item{species_params}{Parámetros de la especie}

\item{oxycal}{Coeficiente oxicalórico (J/g O2)}
}
\value{
Lista con procesos metabólicos
}
\description{
Calcula egestion, excreción, respiración y SDA para un día
}
\keyword{internal}
