#!/bin/bash

if  [ $(id -u) -eq 0 ]; then
	read -p "Digite o nome de usuario: " username
	read -s -p "Digite uma senha: " password
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$username ja existe"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p "$pass" "$username"
		[ $? -eq 0 ] && echo "Usuario adicionado" || echo "Falha ao adicionar"
	fi
fi
