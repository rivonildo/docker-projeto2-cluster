# Docker Swarm Cluster com Vagrant (2 Nodes)

Este projeto demonstra a criação e funcionamento de um **cluster Docker Swarm** utilizando **Vagrant** e **VirtualBox**, composto por **1 nó master** e **1 nó worker**, atendendo às limitações de recursos da máquina local.

O objetivo é comprovar que os nós estão ativos, comunicando-se corretamente e executando uma aplicação real no cluster.

---

## 📌 Arquitetura do Projeto

- **Master Node**
  - Responsável pelo gerenciamento do Swarm
- **Worker Node**
  - Responsável pela execução dos containers
- **Aplicação de teste**
  - Nginx rodando como serviço no Swarm

Rede privada configurada para comunicação entre os nós.

---

## 🚀 Tecnologias Utilizadas

- Docker
- Docker Swarm
- Vagrant
- VirtualBox
- Ubuntu 22.04 LTS
- Nginx

---

## ⚙️ Passos Realizados

1. Criação das máquinas virtuais com Vagrant  
2. Inicialização do Docker Swarm no nó master  
3. Adição do nó worker ao cluster  
4. Validação dos nós com:
5. Criação de um serviço no Swarm:
docker service create --name web -p 8080:80 nginx
6. Teste de acesso via navegador e curl
🌐 Teste da Aplicação

A aplicação Nginx pode ser acessada via navegador através do IP do nó master ou worker na porta:

http://<IP_DO_NODE>:8080

🔐 Segurança e Token do Swarm

O arquivo worker_token.txt presente no projeto não contém token real.

Ele existe apenas para fins educacionais, demonstrando o formato do comando de entrada de um nó no Swarm:

docker swarm join --token <WORKER_TOKEN> <IP_MASTER>:2377


Por boas práticas de segurança:

Tokens reais não são versionados

O token foi rotacionado durante o projeto

Nenhuma credencial sensível é exposta neste repositório

⚠️ Observação Importante

Devido às limitações de hardware da máquina local, o cluster foi implementado com 2 nodes, conforme permitido pela proposta do desafio, mantendo todas as funcionalidades exigidas.

✅ Resultado Final

Cluster Docker Swarm funcional

Nós ativos e sincronizados

Aplicação real rodando no Swarm

Projeto organizado e versionado no GitHub

👤 Autor

Rivonildo Azevedo
Projeto desenvolvido para fins educacionais e entrega de desafio técnico.

Se este projeto te ajudou de alguma forma, sinta-se à vontade para fazer um fork do repositório, explorar o código, adaptar para seus estudos e evoluir a solução. 
Contribuições e feedbacks são sempre bem-vindos! 🚀

