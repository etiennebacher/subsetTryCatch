#' @export
foo <- function(x) {
  tryCatch({
    x <- str2lang(x)
    do.call(subset, list(mtcars, subset = x))
  },
  warning = function(w) NULL,
  error = function(e) NULL
  )
}
