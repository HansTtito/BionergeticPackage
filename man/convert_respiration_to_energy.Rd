% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02-respiration.R
\name{convert_respiration_to_energy}
\alias{convert_respiration_to_energy}
\title{Convertir respiración de O2 a unidades de energía}
\usage{
convert_respiration_to_energy(respiration_o2, oxycal = 13560)
}
\arguments{
\item{respiration_o2}{Respiración en g O2/g pez/día}

\item{oxycal}{Factor de conversión oxycal (J/g O2)}
}
\value{
Respiración en J/g pez/día
}
\description{
Convertir respiración de O2 a unidades de energía
}
