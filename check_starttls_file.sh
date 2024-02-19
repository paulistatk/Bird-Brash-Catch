#!/bin/bash

# Verifique se o diretório /etc/mail/tls existe
if [ ! -d "/etc/mail/tls" ]; then
    echo "O diretório /etc/mail/tls não existe. Criando agora..."
    sudo mkdir -p /etc/mail/tls
else
    echo "O diretório /etc/mail/tls já existe."
fi

# Verifique se o arquivo /etc/mail/tls/starttls.m4 existe
if [ ! -f "/etc/mail/tls/starttls.m4" ]; then
    echo "O arquivo /etc/mail/tls/starttls.m4 não existe. Criando agora..."
    echo "dnl # Configurações para STARTTLS" | sudo tee /etc/mail/tls/starttls.m4
else
    echo "O arquivo /etc/mail/tls/starttls.m4 já existe."
fi

echo "Concluído."
