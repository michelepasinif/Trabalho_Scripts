#!/bin/sh

echo Pegando IP por DHCP 

ip a 

echo Alterando o nome da máquina  
echo Digite o nome da máquina 
read nome 

hostname $nome
echo exibe o nome da máquina 
hostname   






