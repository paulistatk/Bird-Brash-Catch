#!/bin/bash

# Verifique se o arquivo existe
if [ ! -f "/etc/inetd.conf" ]; then
    echo "O arquivo /etc/inetd.conf não existe. Criando agora..."
    sudo touch /etc/inetd.conf
else
    echo "O arquivo /etc/inetd.conf já existe."
fi

echo "Concluído."
