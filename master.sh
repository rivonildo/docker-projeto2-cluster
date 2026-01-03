#!/bin/bash

echo "🧠 Inicializando Docker Swarm (MASTER)..."

IP_MASTER=$(hostname -I | awk '{print $1}')

if ! docker info | grep -q "Swarm: active"; then
  docker swarm init --advertise-addr $IP_MASTER
else
  echo "✔ Swarm já inicializado"
fi

# Gera token
docker swarm join-token worker -q > /vagrant/worker_token.txt

echo "📌 Token salvo em /vagrant/worker_token.txt"
