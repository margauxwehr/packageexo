#' Title
#'
#' @param the_name name 1
#' @param the_name2 name 2
#' @import prenoms
#' @import dplyr
#' @import assertthat
#' @import ggplot2
#' @return result
#' @export
#'
#' @examples draw_names(the_name = 'Youssef', the_name2 = 'Margaux')
draw_names<-function(the_name,the_name2) {
  assertthat::assert_that(is.character(the_name))
  assertthat::assert_that(is.character(the_name2))
  prenoms_france <- prenoms::prenoms %>%
    group_by(year,sex,name) %>%
    summarise(total = sum(n)) %>%
    group_by(year,sex) %>% filter(name==the_name | name==the_name2) %>% group_by(name)
  ggplot(data=prenoms_france,aes(x=year,y=prenoms_france[4]))+geom_line()
}

