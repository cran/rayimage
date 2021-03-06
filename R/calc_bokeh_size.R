#'@title Calculate Bokeh Size
#'
#'@description Calculates the amount of blurring at each point with camera characteristics.
#'
#'@param z Depth matrix.
#'@param zfocus Depth in which to blur. Minimum 0, maximum 1.
#'@param f Focal length of the virtual camera. .
#'@param N F-stop. Focal length of the virtual camera.
#'@keywords internal
#'@return Matrix of bokeh sizes.
calc_bokeh_size = function(z,zfocus,f,N,ramp) {
  ifelse(z-zfocus < 0, abs(f^2*abs(z-zfocus)*ramp/((zfocus - f)*z*N)),
         abs(f^2*abs(z-zfocus)/((zfocus - f)*z*N*ramp)))
}
