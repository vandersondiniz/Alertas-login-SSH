#!/bin/bash
    
GROUP_ID=<group_id>
BOT_TOKEN=<bot_token>

# 3 verificações, não são necessárias, mas devem ser convenientes
if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` \"text message\""
  exit 0
fi
if [ -z "$1" ]
  then
    echo "Adiciona a mensagem como segundo argumento"
    exit 0
fi
if [ "$#" -ne 1 ]; then
    echo "voce pode passar somente um argumento. Para string com espaços, coloque entre aspas"
    exit 0
fi
curl -s --data "text=$1" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null