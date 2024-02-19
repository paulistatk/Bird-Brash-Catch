#!/bin/bash

# Verifique se o arquivo /etc/mail/databases existe
if [ ! -f "/etc/mail/databases" ]; then
    echo "O arquivo /etc/mail/databases não existe. Criando agora..."
    sudo touch /etc/mail/databases
else
    echo "O arquivo /etc/mail/databases já existe."
fi

# Verifique se o arquivo /etc/mail/sendmail.mc existe
if [ ! -f "/etc/mail/sendmail.mc" ]; then
    echo "O arquivo /etc/mail/sendmail.mc não existe. Criando agora..."
    sudo touch /etc/mail/sendmail.mc
else
    echo "O arquivo /etc/mail/sendmail.mc já existe."
fi

echo "Concluído."
