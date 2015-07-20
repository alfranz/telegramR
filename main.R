library(RCurl) 
library(jsonlite) 

# --- Helper function to get credentials for the bot ----- #


# For the initial setup, create an object with tele_info (which will contain credentils for the bot)
# Takes the argument "token", which is a string provided by the Telegram "BotFather" upon creating a new bot.

tele_info <- function(token) {
  
  url <- "https://api.telegram.org/bot"
  method <- "getUpdates"
  req <- paste0(url,token,"/",method)
  info <- getForm(uri = req, .checkParams = FALSE, style = "GET" )
  
  # Parses the returned JSON to get message chat id, to identify user
  
  info_parsed <- fromJSON(info, flatten = TRUE)$result
  chat_id <- info_parsed$message.chat.id[1]
  credentials <- list("token" = token, "chat_id" = chat_id)
  credentials
  
}




# ---- Second function ------ #

# tele_send is the main function, takes two arguments: "myinfo" which is an object created by the aforementioned
# tele_info function. The second argument is the message to be sent by the Bot. This should be a string.


tele_send <- function(myinfo, message) {
  token <- myinfo$token
  url <- "https://api.telegram.org/bot"
  method <- "sendMessage"
  req <- paste0(url,token,"/",method)
  postForm(req, chat_id = myinfo$chat_id , text = message)
}



