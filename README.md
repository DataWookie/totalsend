# totalsend

A wrapper around the [TotalSend](https://www.totalsend.com/) API for sending text messages.

## Usage

```
library(totalsend)

USERNAME = "___"
TOKEN    = "___"

totalsend_username(USERNAME)
totalsend_token(TOKEN)

send_sms("27741398329", "27833823965", paste0("Test message at ", Sys.time(), "."))
```

## API token documentation

```
Details of the API can be found here:

http://kb.totalsend.com/docs
http://kb.totalsend.com/docs/sms-api-documentation
http://kb.totalsend.com/docs/sending-sms
```
