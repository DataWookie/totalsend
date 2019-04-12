#' Set or query Totalsend API username.
#'
#' @param username Totalsend username.
#'
#' @return Username.
#' @export
#'
#' @examples
#' totalsend_username("datawookie")
#' totalsend_username()
totalsend_username <- function(username = NULL) {
  # Assign Totalsend username to a new environment.
  #
  if (!is.null(username)) {
    assign("totalsend_username", username, envir = cache)
  }
  invisible(get("totalsend_username", envir = cache))
}
