#'@title Generate 2D Disk
#'
#'@description Generates a 2D disk with a gradual falloff.
#'
#'Disk generated using the following formula:
#'
#'\ifelse{html}{\out{(-22.35 * cos(1.68 * r<sup>2</sup>) + 85.91 * sin(1.68 * r<sup>2</sup>) ) * exp(-4.89 * r<sup>2</sup>) +
#'(35.91 * cos(4.99 * r<sup>2</sup>) - 28.87 * sin(4.99 * r<sup>2</sup>)) * exp(-4.71 * r<sup>2</sup>) +
#'(-13.21 * cos(8.24 * r<sup>2</sup>) - 1.57 * sin(8.24 * r<sup>2</sup>)) * exp(-4.05 * r<sup>2</sup>) +
#'(0.50 * cos(11.90 * r<sup>2</sup>) + 1.81 * sin(11.90 * r<sup>2</sup>)) * exp(-2.92 * r<sup>2</sup>) +
#'(0.13 * cos(16.11 * r<sup>2</sup>) - 0.01 * sin(16.11 * r<sup>2</sup>)) * exp(-1.51 * r<sup>2</sup>)}}{(-22.35 cos(1.68 r^2) + 85.91 sin(1.68 r^2) ) exp(-4.89 r^2) +
#'(35.91 cos(4.99 r^2) - 28.87 sin(4.99 r^2)) exp(-4.71 r^2) +
#'(-13.21 cos(8.24 r^2) - 1.57 sin(8.24 r^2)) exp(-4.05 r^2) +
#'(0.50 cos(11.90 r^2) + 1.81 sin(11.90 r^2)) exp(-2.92 r^2) +
#'(0.13 cos(16.11 r^2) - 0.01 sin(16.11 r^2)) exp(-1.51 r^2)}
#'
#'The origin of the coordinate system is the center of the matrix.
#'
#'@param dim Default `11`. The dimensions of the resulting square matrix.
#'@export
#'@examples
#'image(generate_2d_disk(101), asp=1)
generate_2d_disk = function(dim = 11) {
  return(generate_disk(1.18, dim))
}