#!/bin/bash
sudo chmod 644 /etc/mail/tls/starttls.m4

# Adicione a linha ao arquivo /etc/mail/sendmail.mc
echo "include(/etc/mail/tls/starttls.m4')dnl" | sudo tee -a /etc/mail/sendmail.mc

# Adicione a linha ao arquivo /etc/mail/submit.mc
echo "include(/etc/mail/tls/starttls.m4')dnl" | sudo tee -a /etc/mail/submit.mc

# Execute o comando sendmailconfig
sudo sendmailconfig

# Reinicie o Sendmail
sudo service sendmail restart

echo "Concluído."
