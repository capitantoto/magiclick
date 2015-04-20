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
