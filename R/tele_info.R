#'  get credentials for the chat bot
#
#'  @param token the HTTP API token provided by the Telegram Botfather
#'  @return returns a list of credentials to identify the user
#'
#'



tele_info <- function(token) {

  url <- "https://api.telegram.org/bot"
  method <- "getUpdates"
  req <- paste0(url,token,"/",method)
  info <- RCurl::getForm(uri = req, .checkParams = FALSE, style = "GET" )

  # Parses the returned JSON to get message chat id, to identify user

  info_parsed <- jsonlite::fromJSON(info, flatten = TRUE)$result
  chat_id <- info_parsed$message.chat.id[1]
  credentials <- list("token" = token, "chat_id" = chat_id)
  credentials

}
