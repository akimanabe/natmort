#' Estimate natural mortality from longevity using Hoenig (1983)
#'
#' @param t_max maximum age of the fish or longevity
#'
#' @return natural mortality coefficient M
#' @export
#'
#' @examples
#' \dontrun{
#' hoenig(t_max = 6)
#' }
hoenig <-
  function(t_max){
    assertthat::assert_that(length(t_max) == 1, msg = "t_max must be a single number")
    assertthat::assert_that(t_max > 0, msg = "t_max is not a natural number")
    exp( 1.46 + (-1.01) * log(t_max) )
  }
