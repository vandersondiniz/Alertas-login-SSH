# Prepare a mensagem para ser enviada
login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
login_date="$(date +"%e %b %Y, %a %r")"
login_name="$(whoami)"
server_name="$(hostname)"

# Para inserir novas variáveis eu usei $'\n' aqui
message="New login to server"$'\n'"$serner_name"$'\n'"$login_name"$'\n'"$login_ip"$'\n'"$login_date"

#Enviar a mensagem para o telegram
telegram-send "$message"