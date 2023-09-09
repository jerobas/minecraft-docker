# Dockerfile para Servidor Minecraft na AWS

Este Dockerfile e guia de uso ajudarão você a criar um servidor Minecraft na AWS usando contêineres Docker. Este processo torna a implantação e gerenciamento de servidores Minecraft na AWS mais fácil e escalável.

## Requisitos

Antes de começar, certifique-se de que você tenha o seguinte:

- Conta na AWS com credenciais de acesso configuradas.
- [Docker](https://www.docker.com/get-started) instalado em sua máquina local.

## Passos para criar e implantar um servidor Minecraft

### 1. Clone esse reposítorio

### 2. Altera a versão do server mudando o link `wget` que sera baixado

### 3. Execute o comando para dar build
    ```bash
    docker build -t minecraft-server .
    ```
### 4. Execute o docker para iniciar o servidor
    ```bash
    docker run -p 25565:25565 -d  minecraft-server
    ```
### 5. Abra a porta `25565` no security-group da sua instancia da AWS

## Desenvolvedor

- Flávio Filho ([flaviozno](https://github.com/flaviozno))