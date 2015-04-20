# Clono los repositorios del laburo a ~/lavoro
mkdir ~/lavoro
cd ~/lavoro
git clone git@github.com:stoneacre/sac-platform-reporting.git
git clone git@github.com:stoneacre/sac-platform-analyses.git

# Invento unos alias comodos para llegar a dichas carpetas.

echo "# Alias laborales:" >> ~/.bash_aliases
echo "alias spr='cd ~/lavoro/sac-platform-reporting'" >> ~/.bash_aliases
echo "alias spa='cd ~/lavoro/sac-platform-analyses'" >> ~/.bash_aliases
. ~/.bashrc

# Para instalar nokogiri-1.5.5, se necesitan algunos paquetes extras. Antes de correr `bundle install`, ejecutar:
sudo apt-get install libxml2-dev libxslt-dev 

# Para instalar eventmachine-1.0.3, hay que tener g++
sudo apt-get install g++

# Para instalar mysql2, hay que tener algun cliente de SQL Usamos el default de 14.04 (mysql-5.5) y las librerias de desarrollo
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
