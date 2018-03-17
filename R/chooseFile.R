#' chooseFile
#' @title Convenient function for choosing CSV data file using interactive dialog box.

#' @aliases chooseFile
#' @keywords chooseFile

#' @description You can alternatively use this function for choosing CSV file in an interactive GUI mode A file choose dialog box will be prompted.

#' @export chooseFile
#' @param ... Any arguments available for read.csv() function; file will be automatically chosen once you pick up your file using the file chooser dialog box.

#' @details
#' See example below.

#' @return A character value of the file path will be returned.

#' @examples

#' ```{r, echo=TRUE}
#' data <- chooseFile(header=T)
#' str(data)
#' # You can  drop off your file using the file picker dialog box.
#' ```

#' @author JooYoung Seo

#Function starts
chooseFile <-
function(...) {
read.csv(file.choose(), ...)
}
#Function ends
