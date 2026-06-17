#!/bin/bash

echo "Iniciando deploy da aplicação..."

echo "Parando containers existentes..."
docker compose down

echo "Construindo nova imagem..."
docker compose build

echo "Subindo nova versão..."
docker compose up -d

echo "Verificando containers em execução..."
docker ps

echo "Deploy concluído com sucesso!"