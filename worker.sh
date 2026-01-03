#!/bin/bash

echo "👷 Worker iniciando..."

MASTER_IP="10.10.10.100"
TOKEN_FILE="/vagrant/worker_token.txt"

# Aguarda token existir
while [ ! -f $TOKEN_FILE ]; do
  echo "⏳ Aguardando token do master..."
  sleep 5
done

TOKEN=$(cat $TOKEN_FILE)

docker swarm join --token $TOKEN $MASTER_IP:2377

echo "✅ Worker conectado ao cluster!"
