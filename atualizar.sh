#!/bin/bash

# Navegar até o diretório do projeto (opcional, caso esteja em outro diretório)
cd ~/moz-vip-way-atendimento

# Inicializar o repositório Git (caso não tenha feito isso antes)
git init

# Adicionar o repositório remoto (substitua pelo seu repositório GitHub)
git remote add origin https://github.com/carmon-byts/seu-repositorio.git

# Adicionar todas as mudanças no repositório
git add .

# Fazer o commit com uma mensagem
git commit -m "Atualização do site"

# Enviar as alterações para o GitHub
git push -u origin master
