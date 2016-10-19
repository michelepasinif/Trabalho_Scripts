#!/bin/sh

#Script desenvolvido por Michele Pasini e Hermes, Outubro de 2016

#Este script irá verificar se o sistema é 32/64 bis, e irá verificar detalhes do sistema operacional 

#Executando o comando para verificação das propriedades do sistema operacional via ssh

#Pega o nome/ip da máquina de destino 

echo "Digite o Nome ou IP da máquina de destino 
      read nome 

#Exibe se o sistema é 32/64 bits 
echo "Verificando se o computador é 32 ou 64 bits" 

 ssh aluno@$nome uname -m   

#Verificando detalhes do sistema 

echo "Verificando os detalhes do sistema" 

ssh aluno@$nome cat /etc/issue 

