#' Title
#'
#' @param file This is the file from which we want to import the sheets
#'
#' @return a list
#' @import readxl
#' @importFrom readxl excel_sheets
#' @export
#'
#' @examples
#' \dontrun{
#' multi_excel('jeux.xlsx')
#' }
multi_excel <- function(file) {
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet) {
    readxl::read_excel(file, sheet = sheet)
  })
  return(result)
}

