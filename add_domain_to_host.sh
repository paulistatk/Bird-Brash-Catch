#!/bin/bash

# Adicione o domínio ao final do nome do host
echo "$(hostname).paulista.systems" | sudo tee -a /etc/hosts

echo "Concluído."
