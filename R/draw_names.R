#' Plots several name distribution over the years
#'
#' @param vector_name Vector composed of names
#'
#' @return a graph
#' @export
#' @import assertthat dplyr ggplot2
#'
#' @example
#' \dontrun
#'{
#'draw_names(c("Hector", "Louis", "Victor"))
#'}
#'
draw_names <- function(vector_name){
  assert_that(is.character(vector_name))
  base <- prenoms::prenoms %>%
    filter(name %in% vector_name) %>%
    group_by(name,year) %>%
    summarize(total=sum(n))

  ggplot(data = base, aes(x = year, y = total, colour = name))+
    geom_line()
}
