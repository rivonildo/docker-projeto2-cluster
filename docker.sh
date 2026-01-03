#!/bin/bash

echo "🐳 Instalando Docker..."

# Atualiza pacotes
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# Instala Docker se ainda não existir
if ! command -v docker &> /dev/null; then
  curl -fsSL https://get.docker.com | sudo bash
else
  echo "✔ Docker já instalado"
fi

# Ativa Docker no boot
sudo systemctl enable docker
sudo systemctl start docker

echo "🔎 Versão do Docker:"
docker --version

# Instala Docker Compose Plugin (oficial e atual)
if ! docker compose version &> /dev/null; then
  echo "📦 Instalando Docker Compose plugin..."
  sudo mkdir -p /usr/local/lib/docker/cli-plugins
  sudo curl -SL https://github.com/docker/compose/releases/download/v2.25.0/docker-compose-linux-x86_64 \
    -o /usr/local/lib/docker/cli-plugins/docker-compose
  sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
else
  echo "✔ Docker Compose já instalado"
fi

echo "🔎 Versão do Docker Compose:"
docker compose version

# Permite o usuário vagrant usar docker sem sudo
sudo usermod -aG docker vagrant

echo "✅ Docker configurado com sucesso!"
