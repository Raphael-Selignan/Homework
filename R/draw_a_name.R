#' Plots the occurences of a name over the years
#'
#' @param the_name Name wanted
#' @param the_sex  M or F for male or female
#'
#' @return a graph
#' @export
#' @import ggplot2 dplyr prenoms magrittr
#'
#' @examples
#' \dontrun{
#' draw_a_name("Marcel","M")
#' }
draw_a_name <- function(the_name,the_sex){
  assert_that(is.character(the_name))
  assert_that(the_sex == "M" | the_sex == "F")
  base <- prenoms::prenoms %>%
    filter(name == the_name & sex == the_sex) %>%
    group_by(year) %>%
    summarize(total=sum(n))

  ggplot(data = base, aes(x = year, y = total)) +
    geom_line()

}
