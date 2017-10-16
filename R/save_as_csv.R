#' save csv file under name given by user
#'
#' @param dataset name of the dataset to save as csv
#' @param filename name chosen by the user, must be using csv extension
#' @param row.names Chooses to omit the row names when saving the file as csv, omitted by default
#' @param ... Other possible parameters on how the list should be extracted
#'
#' @return no visible return, produces the path to the saved file
#' @export
#' @import assertthat
#' @importFrom utils write.csv2
#'
#' @examples
#' \dontrun{
#' save_as_csv(prenoms, "prenoms.csv")
#' }
#'
save_as_csv <- function(dataset, filename, row.names = FALSE, ...) {
  assert_that(has_extension(filename,"csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))
  write.csv2(x = dataset, file = filename, row.names = row.names, ...)
  invisible(normalizePath(filename))
}
