#!/bin/bash

# Problema : Instalacion de Ubuntu 12.04+ en Dell Latitude E6220 no reconozca la placa wifi
# Solucion: 	Primero, purgar todos los drivers que por default Ubuntu incluye para placas Broadcom
# 		Segundo, instalar unicamente el driver en particular que si funciona
# Notas: Probablemente requiera reniciar para surtir efecto? No estoy seguro

sudo apt purge -y bcmwl-kernel-source broadcom-sta-common broadcom-sta-source b43-fwcutter firmware-b43-installer
sudo apt install -y bcmwl-kernel-source
