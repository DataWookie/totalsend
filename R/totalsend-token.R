#' Set or query Totalsend API token.
#'
#' @param token Totalsend API token.
#'
#' @return Token.
#' @export
#'
#' @examples
#' totalsend_token("jqbadf23aka6wsiv38fzyzi0ihu15zcfkkgl0rmnr1b4j7pg")
#' totalsend_token()
totalsend_token <- function(token = NULL) {
  # Assign API token to a new environment.
  #
  if (!is.null(token)) {
    assign("totalsend_token", token, envir = cache)
  }
  invisible(get("totalsend_token", envir = cache))
}
