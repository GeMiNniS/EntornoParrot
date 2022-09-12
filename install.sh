#!/bin/bash
clear


#test de pause. Funciona btw.
#printf "Presione <ENTER>..."
#read nada
#Actualizar el sistema

printf "\033[33m\n Actualizando el sistema\n\n"

sudo apt-get update #&& sudo apt-get upgrade -y

printf "\n\n"


#Introducir ruta de instalacion

printf "\033[33m\nIntroduce la ruta absoluta:\n\033[0m> "

read install_ruta

	#printf "has introducido esta ruta: %s\n" $install_ruta

#Comprobar ruta de instalacion

	#printf "\nComprobando ruta: \"%s\"\n" $install_ruta

if cd $install_ruta ; then
	printf "\033[32mLa ruta es valida.\n\033[0m"
	
else
	printf "\033[31mLa ruta no es valida.\n\033[0m"
	exit -1
fi

#Moverse a ruta de instalacion

cd $install_ruta

#Instalar paquetes necesarios

sudo apt-get install  build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev  libxcb-randr0 


#clonar repositorios

git clone https://github.com/baskerville/bspwm
git clone https://github.com/baskerville/sxhkd




printf "Instalación finalizada.\n"
exit 0

