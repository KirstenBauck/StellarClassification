#' Classification of Stars, Galaxies and Quasars from the Sloan Digital Sky Survey (SDSS)
#'
#' @format a data frame with 99,999 observations
#' \describe{
#'   \item{class}{object class: GALAXY, STAR or quasar (QSO) object.}
#'   \item{right_ascension_angle}{Right Ascension Angle at J2000 epoch.}
#'   \item{declination_angle}{Declinatino angle at J2000 epoch.}
#'   \item{ultraviolet_filter}{Ultraviolet filter in the photometric system.}
#'   \item{green_filter}{Green filter in the photometric system.}
#'   \item{red_filter}{Red filter in the photometric system.}
#'   \item{near_infrared_filter}{Near Infrared filter in the photometric system.}
#'   \item{infrared filter}{Infrared filter in the photometric system.}
#'   \item{redshift}{redshift value based on the increase in wavelength}
#'   \item{date}{Date when a given piece of SDSS data was taken}
#' }
#' @source \url{https://www.kaggle.com/datasets/fedesoriano/stellar-classification-dataset-sdss17}
"StellarObjs"
