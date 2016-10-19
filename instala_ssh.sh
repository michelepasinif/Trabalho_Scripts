#!/bin/sh

#Desenvolvido por Michele França e Hermes 
#Este script irá instalar o SSH-Server, alterar a porta e testar uma conexão para outra máquina 

#Instalando o Openssh-server 

apt-get install openssh-server

echo SSH instalando 

#Fazendo cópia do arquivo de configuração do SSH

cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config_bk" 

#Alterando a porta do SSH para 10000 com o comando sed 

echo trocando a porta SSHD para 10000

sudo sed -i "s/Port 22/Port 10000/g" "/etc/ssh/sshd_config"
####Verificar " no último" 

#Echo reiniciando o SSH 

echo Reiniciando o SSH 

/etc/init.d/ssh restart 

#Capturando informações para a conexão ssh 

echo Digite o ip do colega 
read nome 
echo Digite a port 
read port


#Executando o comando para verificação das propriedades do sistema operacional via ssh

ssh aluno@$nome 

#Exibe se o sistema é 32/64 bits 
echo Verificando se o computador é 32 ou 64 bits 
uname -m  

#Verificando detalhes do sistema 

echo Verificando os detalhes do sistema 

cat /etc/issue 


#Irá testar a conexão com a máquina do colega 

echo Testando conexão no computador do colega 
echo Digite o ip do colega 
read nome 
echo Digite a port 
read port

ssh aluno@$nome -p $port
