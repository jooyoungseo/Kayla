#' chooseFile
#' @title Convenient function for choosing CSV data file using interactive dialog box.

#' @aliases chooseFile
#' @keywords chooseFile

#' @description You can alternatively use this function for choosing *.csv, *.txt, *.xlsx, *.sav (SPSS) files in an interactive GUI mode A file choose dialog box will be prompted.

#' @export chooseFile
#' @param ... Any arguments available for read.csv(), read.table(), readxl::read_excel(), foreign::read.spss() functions; file will be automatically chosen once you pick up your file using the file chooser dialog box.

#' @details
#' See example below.

#' @return A character value of the file path will be returned.

#' @examples

#' data <- chooseFile(header=T)
#' str(data)
#' # You can  drop off your file using the file picker dialog box.

#' @author JooYoung Seo (jooyoung@psu.edu)

#Function starts
chooseFile <-
function(...) {

fullFile <- file.choose()
fileExt <- tools::file_ext(fullFile)

if(fileExt == "csv") {
read.csv(fullFile, ...)
} else if(fileExt == "txt") {
read.table(fullFile, ...)
} else if(fileExt == "xlsx") {
readxl::read_excel(fullFile, ...)
} else if(fileExt == "sav") {
foreign::read.spss(file=fullFile, to.data.frame=T, ...)
} else {
stop("Sorry, but the file you have just chosen is not supported in this function. Report on this issue to the author (JooYoung Seo) at jooyoung@psu.edu. :)")
}

}
#Function ends
