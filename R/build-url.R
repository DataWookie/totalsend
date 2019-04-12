#' Build URL.
#'
#' @param to Number to send SMS to.
#' @param from Number to send SMS from.
#' @param message SMS message.
#'
#' @return URL character vector.
build_url <- function(to, from, message) {

  # Assign Totalsend username.
  #
  username <- totalsend_username()

  # Assign Totalsend API token.
  #
  token <- totalsend_token()

  # Encode message contents (most importantly, handle spaces!).
  #
  message <- curl::curl_escape(message)

  # Assign API url.
  #
  # Details of the API can be found here:
  # http://kb.totalsend.com/docs
  # http://kb.totalsend.com/docs/sms-api-documentation
  # http://kb.totalsend.com/docs/sending-sms
  #
  API_URL_TOTALSEND <- "http://smsapi.totalsend.com/json"

  # Print a character vector containing the necessary information in URL form.
  #
  sprintf(
    "%s/3?action=message_send&username=%s&password=%s&to=%s&from=%s&text=%s",
    API_URL_TOTALSEND,
    username,
    token,
    to,
    from,
    message
  )
}
