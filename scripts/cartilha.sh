#!/bin/bash
# Nesse script puxaremos infos rápidas do sistema, como hostname, OS e usuário.
#
# Começaremos setando variáveis
# 
# ===============
USUARIO=$(whoami)
HOSTNAME=$(hostname)
DIRETORIO=$(pwd)
DATA=$(date)
DISTRO=$(grep ^PRETTY_NAME /etc/os-release | cut -d '"' -f2)
NOME=$(grep ^$USUARIO /etc/passwd | cut -d ':' -f5)
# ===============

echo =====================
echo CARTILHA DO ADMIN
echo =====================
echo Nome:	"$NOME"
echo Usuário:	"$USUARIO"
echo Hostname:	"$HOSTNAME"
echo Distro:	"$DISTRO"
echo Diretório:	"$DIRETORIO"
echo Data:	"$DATA"
echo =====================
echo Frase do dia:
echo "$(echo "I use "$DISTRO" btw")"
echo '$(echo "I use "$DISTRO" btw")'
echo =====================
