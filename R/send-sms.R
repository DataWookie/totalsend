#' Send SMS.
#'
#' @param to Number to send SMS to.
#' @param from Number to send SMS from.
#' @param message SMS message.
#'
#' @return GET url response.
#' @export
#'
#' @examples
#' send_sms("2783000000", "2783000001", "Hello world.")
#' send_sms()
send_sms <- function(to, from, message) {

  # Use the build_url function to build a URL with to, from and message.
  #
  GET(build_url(to, from, message))
}
