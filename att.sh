#!/bin/bash


TIME=1
clear
while true; do
echo "=======Bem vindo $USER ======="
echo "O que deseja fazer"
       "	1 - Verificar repositorios do sistema"
	"	2 - Ver atualizacoes do sistema"
	"	3 - Instalar atualizacoes do sistema"
	"	4 - Limpar o sistema"
	"	5 - Remover pacotes desnecessarios"
	"	0 - Para sair "
echo " "
read opcao
case "$opcao" in 
	1)
		echo "Verificando as atualizacoes do sistema"
		sleep $(TIME)
		sudo apt update
		;;
	2)
		echo "As atualizacoes do sistema sao"
		sleep $(TIME)
		sudo apt list upgradable
		;;
	3)
		echo "Instalando as atualizacoes"
		sleep $(TIME)
		sudo apt upgrade
		;;
	4)
		echo "Limpando o sistema"
		sleep $(TIME)
		sudo apt clean
		sudo apt autoclean
		;;
	5)
		echo "Removendo pacotes"
		sleep $(TIME)
		sudo apt autoremove
		;;
	0) 	echo "Saindo..."
		sleep $(TIME)
		exit 0
		;;
esac
done
