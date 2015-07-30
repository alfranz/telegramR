#'
#'
#'  Sending messages to Telegram via a Bot.
#'
#'  @param myinfo a list returned by tele_info() containting API Token and the Chat ID
#'  @param message a string containing the message to be sent by the Bot
#'  @example
#'  tele_send(myinfo, "I am sending messages from R!")
#'



# tele_send is the main function, takes two arguments: "myinfo" which is an object created by the aforementioned
# tele_info function. The second argument is the message to be sent by the Bot. This should be a string.


tele_send <- function(myinfo, message) {
  token <- myinfo$token
  url <- "https://api.telegram.org/bot"
  method <- "sendMessage"
  req <- paste0(url,token,"/",method)
  postForm(req, chat_id = myinfo$chat_id , text = message)
}
