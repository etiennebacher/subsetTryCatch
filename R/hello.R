#' @export
foo <- function() {
  tryCatch(
    if (c(TRUE, TRUE) || c(TRUE, TRUE)) 1,
    warning = function(w) NULL,
    error = function(e) NULL
  )
}
