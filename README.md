# telegramR

R wrapper for the Telegram Bot API. Send Telegram messages from R. 

## Description

This package makes use of the rather new bot API of mobile messaging service [Telegram](https://telegram.org/). Get notifications from R straight to your cell phone (for example when that time-consuming simulation finally has finished!). 

## Installation


```R
# install.packages("devtools")

devtools::install_github("alfranz/telegramR", dependencies = TRUE)

```

## Initial setup

For the initial set up, you have to create a so-called Telegram Bot through a client of your choice. You'll need the (rather long) HTTP token, so I recommend using the excellent [web client](https://web.telegram.org) making it easier to copy/paste the token into R.

* First message the [@BotFather](https://telegram.me/botfather) on Telegram, he's the guy setting up your personal R bot.

* Follow the instructions and name your bot. The Bot's username has to be unique and end with **bot**. You'll be provided with an **HTTP Token** looking like this *04849:AAF-PVwasdfebj_W894594tJEpM*, note it somewhere, as you will need this later on. 

* *Optionally*: You can also name your bot and add desciptions, avatars and whatnot. See [this](https://core.telegram.org/bots#botfather) for further instructions. 

* Message your bot. Send a message and say Hi! to him (or something else but don't curse). This needs to be done in order to get your chat id which will be needed by R.

* Enter your token into the ``tele_info("0394083-this-is-a-random-http-token-23124333h3")`` function and start sending messages to your Telegram with ``tele_send()``, happy texting!   


## Future plans 

Future plans for this package include:
* functionality to send images, plots and knitr reports (html/pdf).

Also, the installation process is a bit tedious and could be made easier.

Any suggestions? Feel free to contact me at alexfranz90@googlemail.com.

