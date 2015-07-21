# telegramR
An R wrapper for the Telegram Bot API. This will be further developed into an R package.

## Description

This package makes use of the rather new bot API of mobile messaging service [Telegram](https://telegram.org/). Get notifications from R straight to your cell phone (for example when that time-consuming simulation finally has finished!). 

## Installation

For the initial set up, you have to create a so-called Telegram bot through a client of your choice. We'll need the (rather long) HTTP token, so a desktop client will be easier to copy the token into R.  

1. Install packages ``RCurl`` and ``jsonlite`` in order to use the script. 


2. First we talk to the [**@BotFather**](https://telegram.me/botfather) on Telegram, he's the guy setting up our R bot.
 Insert image 1 here -

3. Follow the given instructions and name your bot. The Bot's username has to be unique and end with **bot**. You'll be provided with an **HTTP Token** looking like *80221123:AAF-PVwasdRDebj_W8iO-828394tJEpM*, note it somewhere, as we will need this later on. 

3.1. *Optionally*: You can also name your bot and add desciptions, avatars and whatnot. See [this](https://core.telegram.org/bots#botfather) for further instructions. 

4. Talk to your bot. Send him a message and say Hi! to him. This needs to be done in order to get your chat id which will be needed by R.

5. Enter your token into the ``tele_info`` function and start sending messages to your Telegram with ``tele_send``, happy texting!   


## Future plans 

Future plans for this package include adding functionalities such as the possibility of sending plots and knitr reports (e.g. in html or pdf format). Also, the installation process is a bit tedious and could be made easier.
Any suggestions on your side? Feel free to contact me at alexfranz90@googlemail.com.

