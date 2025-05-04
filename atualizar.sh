#!/bin/bash

# Navegar até o diretório do projeto
cd ~/moz-vip-way-atendimento

# Adicionar as alterações
git add .

# Fazer o commit com uma mensagem
git commit -m "Atualização do site"

# Enviar as alterações para a branch principal (main)
git push -u origin main
