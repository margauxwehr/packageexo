#' Title
#'
#' @param dataset we choose iris
#' @param filename iris in csv format
#' @param row.names optional
#' @param ... other optional parametre
#' @import assertthat
#' @return result
#' @export
#'
#' @examples
#'
#' data(iris)
#' save_as_csv(dataset=iris, filename="iris2.csv")
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

