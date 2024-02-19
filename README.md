# Bird-Brash-Catch

Este projeto (tenta) configurar o servidor de e-mail Sendmail em um sistema Linux. Ele realiza as seguintes tarefas:

Verifica a existência de arquivos e diretórios essenciais para o Sendmail e os cria se necessário, como /etc/mail/databases, /etc/mail/sendmail.mc e /etc/mail/tls/starttls.m4.

Configura o TLS (Transport Layer Security) para comunicação criptografada, adicionando as linhas necessárias aos arquivos de configuração do Sendmail.

Verifica se o usuário Sendmail existe e o cria se necessário. Também garante que o diretório /var/lib/sendmail exista e seja propriedade do usuário Sendmail.

Verifica a existência do arquivo /etc/inetd.conf e o cria se necessário.

Adiciona o FQDN (nome de domínio totalmente qualificado) do servidor ao arquivo /etc/hosts.

Verifica a existência do diretório /etc/mail/tls e o cria se necessário. Também verifica a existência do arquivo /etc/mail/tls/starttls.m4 e o cria se necessário, configurando o TLS para o Sendmail.

Verifica a existência do arquivo /etc/mail/mkaliases.db e o cria se necessário. Também verifica a existência do arquivo /etc/mail/aliases e o cria se necessário.

Depois de executar essas tarefas, o servidor Sendmail é configurado e pronto para ser usado.