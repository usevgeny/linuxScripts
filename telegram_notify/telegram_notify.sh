#!/bin/bash
######################################################################
# @author      : {{NAME}} ({{EMAIL}})
# @file        : {{FILE}}
# @created     : {{TIMESTAMP}}
#
# @description : {{CURSOR}}
######################################################################



chat_id="${YOUR_CHAT_ID}"
bot_token="${YOUR_BOT_TOKEN}"

stamp=$(date +%d:%m:%Y_%H:%M:%S)

curl -X POST https://api.telegram.org/bot"${bot_token}"/sendMessage -d chat_id="${chat_id}" -d text="${stamp}: $(whoami) has just logged in" > /dev/null 2>&1
