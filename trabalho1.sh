#!/bin/sh

#Desenvolvido por Michele Pasini e Hermes 

#Este script irá configurar a máquina para pegar IP por DHCP, alterar o nome do host e exibi-lo ao usuário 

# IP por DHCP 
echo Pegando IP por DHCP 

ip a 

#Irá alterar o nome da máquina 
echo Alterando o nome da máquina  
echo Digite o nome da máquina 
read nome 

#Exibe o nome da máquina para o usuário 
hostname $nome
echo exibe o nome da máquina 
hostname   






