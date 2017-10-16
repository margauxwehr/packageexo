#' Title
#'
#' @param file This is the file from which we want to import the sheets
#'
#' @return a list
#' @export
#' @import readxl
#'
#' @examples
multi_excel <- function(file) {
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}

