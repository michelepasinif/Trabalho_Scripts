#!/bin/sh

#Desenvolvido por Michele França e Hermes 
#Este script irá instalar o SSH-Server, alterar a porta e testar uma conexão para outra máquina 

#Instalando o Openssh-server 

apt-get install openssh-server

echo SSH instalando 

#Alterando a porta do SSH para 10000

echo trocando a porta SSHD para 10000

nano "/etc/ssh/sshd_config"

#Echo reiniciando o SSH 

echo Reiniciando o SSH 

/etc/init.d/ssh restart 

#Irá testar a conexão com a máquina do colega 

echo Testando conexão no computador do colega 
echo Digite o ip do colega 
read nome 
echo Digite a port 
read port

ssh aluno@$nome -p $port





