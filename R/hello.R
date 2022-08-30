#' @export
foo <- function(x) {
  x <- substitute(x)
  if (!is.character(x)) x <- insight::safe_deparse(x)
  tryCatch({
    subset(mtcars, subset = eval(parse(text = x)))
  },
  warning = function(w) NULL,
  error = function(e) NULL
  )
}
