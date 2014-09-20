# Auxillary functions for the generation of a Fourier Series

#'Simulate a fourier series
#'@param x the x axis values 
#'@param period the period of oscillation
#'@param amplitude the amplitude
#'@param phase the phase at origin
#'@return the Fourier series data
fourierSeries <- function(x=NULL, parameters=NULL) {
  
  if (is.null(x)) {
    x<-seq(1,100, by=0.01)
  }
  
  if (is.null(parameters)) {
    parameters$magnitude <- 10
    parameters$period <-10
    parameters$amplitude <-50
    parameters$phase <-0
  }
  
  y<-parameters$magnitude + parameters$amplitude *
    cos(2*pi * x/parameters$period + parameters$phase)
  fs<-data.frame(x=x, y=y)
  fs
}
