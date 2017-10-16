#' import all csv files from a given folder
#'
#' @param folder directory of the folder
#'
#' @return list
#' @export
#' @import assertthat
#'
#' @examples
#' \dontrun{
#' my_csv_reader("Users:/Documents")
#' }
#'
my_csv_reader <- function(folder){
  assert_that(is.dir(folder))
  l <- list.files(path = folder, pattern = ".*csv$", full.names = TRUE)#
  result <- lapply(l,read.csv2)
  return(result)
}
