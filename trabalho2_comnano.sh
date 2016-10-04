#!/bin/sh

apt-get install openssh-server

echo SSH instalando 
echo trocando a porta SSHD para 10000

nano "/etc/ssh/sshd_config"

echo Reiniciando o SSH 

/etc/init.d/ssh restart 

echo Testando conexão no computador do colega 
echo Digite o ip do colega 
read nome 
echo Digite a port 
read port

ssh aluno@$nome -p $port





