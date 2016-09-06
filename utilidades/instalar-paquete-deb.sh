#!/bin/bash

PWD=`pwd`

sudo dpkg -i $PWD/$1
sudo apt-get install -f
exit
