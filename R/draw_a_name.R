#' Title
#'
#' @param the_name
#' @param the_sex
#' @import dplyr
#' @import ggplot2
#' @import prenoms
#' @return
#' @export
#'
#' @examples
draw_a_name<-function(the_name,the_sex) {
  b=1900:2015
  assertthat::assert_that(is.character(the_name))
  prenoms_france <- prenoms::prenoms %>%
    group_by(year,sex,name) %>%
    summarise(total = sum(n)) %>%
    group_by(year,sex) %>% filter(name==the_name,sex==the_sex)
  ggplot(data=prenoms_france,aes(x=year,y=prenoms_france[4]))+geom_line()
}
