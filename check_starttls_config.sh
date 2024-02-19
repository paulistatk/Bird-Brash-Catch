#!/bin/bash

# Verifique as permissões do arquivo
echo "Permissões para /etc/mail/tls/starttls.m4:"
ls -l /etc/mail/tls/starttls.m4

# Verifique o conteúdo dos arquivos
echo "Conteúdo de /etc/mail/sendmail.mc:"
grep 'starttls.m4' /etc/mail/sendmail.mc

echo "Conteúdo de /etc/mail/submit.mc:"
grep 'starttls.m4' /etc/mail/submit.mc

echo "Concluído."
