#!/bin/bash

# Verifique se o usuário sendmail existe
if grep -q "^sendmail:" /etc/passwd; then
    echo "O usuário sendmail já existe."
else
    echo "O usuário sendmail não existe. Criando agora..."
    sudo useradd -r -U -d /var/lib/sendmail -s /sbin/nologin sendmail
fi

# Verifique se o diretório existe
if [ ! -d "/var/lib/sendmail" ]; then
    echo "O diretório /var/lib/sendmail não existe. Criando agora..."
    sudo mkdir /var/lib/sendmail
else
    echo "O diretório /var/lib/sendmail já existe."
fi

# Altere a propriedade do diretório para o usuário sendmail
echo "Alterando a propriedade do diretório /var/lib/sendmail para o usuário sendmail..."
sudo chown sendmail:sendmail /var/lib/sendmail

echo "Concluído."
