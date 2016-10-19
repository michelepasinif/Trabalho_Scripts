#!/bin/sh

#Script desenvolvido por Michele Pasini e Hermes, Outubro de 2016

#Este script irá verificar se o sistema é 32/64 bis, e irá verificar detalhes do sistema operacional 

#Executando o comando para verificação das propriedades do sistema operacional via ssh

ssh aluno@$nome 

#Exibe se o sistema é 32/64 bits 
echo "Verificando se o computador é 32 ou 64 bits" 
uname -m  

#Verificando detalhes do sistema 

echo "Verificando os detalhes do sistema" 

cat /etc/issue 

