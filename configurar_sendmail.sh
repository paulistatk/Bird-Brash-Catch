#!/bin/bash

# Verificar e criar arquivos e diretórios essenciais
if [ ! -f "/etc/mail/databases" ]; then
    sudo touch /etc/mail/databases
fi
if [ ! -f "/etc/mail/sendmail.mc" ]; then
    sudo touch /etc/mail/sendmail.mc
fi
if [ ! -f "/etc/mail/tls/starttls.m4" ]; then
    sudo touch /etc/mail/tls/starttls.m4
    echo "dnl # Configurações para STARTTLS" | sudo tee /etc/mail/tls/starttls.m4
fi
if [ ! -d "/var/lib/sendmail" ]; then
    sudo mkdir /var/lib/sendmail
fi
if [ ! -f "/etc/inetd.conf" ]; then
    sudo touch /etc/inetd.conf
fi
if [ ! -f "/etc/mail/mkaliases.db" ]; then
    sudo touch /etc/mail/mkaliases.db
fi
if [ ! -f "/etc/mail/aliases" ]; then
    sudo touch /etc/mail/aliases
fi

# Configurar TLS
echo "include(/etc/mail/tls/starttls.m4')dnl" | sudo tee -a /etc/mail/sendmail.mc
echo "include(/etc/mail/tls/starttls.m4')dnl" | sudo tee -a /etc/mail/submit.mc

# Executar sendmailconfig
sudo sendmailconfig

# Iniciar o Sendmail
sudo service sendmail start

echo "Configuração do Sendmail concluída."