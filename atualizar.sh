#!/bin/bash

# Caminho da pasta principal do site
DESTINO=~/moz-vip-way-atendimento

# Arquivos que serão atualizados na raiz do site
# Coloque os arquivos atualizados (index.html, style.css, script.js etc.)
# em uma pasta chamada `atualizacoes` dentro de `moz-vip-way-atendimento`

ATUALIZACOES="$DESTINO/atualizacoes"

# Verificar se a pasta de atualizações existe
if [ ! -d "$ATUALIZACOES" ]; then
  echo "A pasta 'atualizacoes' não existe. Crie ela em $ATUALIZACOES e coloque os arquivos que deseja atualizar."
  exit 1
fi

# Ir para a pasta do site
cd "$DESTINO" || exit

# Atualizar apenas os arquivos da raiz, sem tocar nas subpastas
for ARQUIVO in "$ATUALIZACOES"/*; do
  if [ -f "$ARQUIVO" ]; then
    cp -f "$ARQUIVO" "$DESTINO/"
    echo "Atualizado: $(basename "$ARQUIVO")"
  fi
done

echo "Atualização da raiz do site concluída com sucesso!"
