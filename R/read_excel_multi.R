#' import all sheets from an excel file
#'
#' @param file Name of the file from which extracting is needed
#'
#' @return a list
#' @export
#' @import assertthat readxl
#'
#' @examples
#' \dontrun{
#' read_excel_multi(file/path)
#' }
#'
read_excel_multi <- function(file) {
  assert_that(is.dir(dirname(file)))
  assert_that(has_extension(file,"xlsx"))
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}
