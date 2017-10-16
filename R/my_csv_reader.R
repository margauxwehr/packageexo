#' Title
#'
#' @param folder
#'
#' @return
#' @export
#'
#' @examples
my_csv_reader <- function(folder=getwd()) {
  assertthat::assert_that(is.null(folder))
  assertthat::assert_that(is.character(folder))

  l <- list.files(path=folder, pattern = ".*csv$", full.names=TRUE)
  result <- lapply(l,read.csv2)

  return(result)
}
