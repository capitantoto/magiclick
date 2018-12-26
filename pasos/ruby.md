# Guia de instalacion funcional basica de Ruby

## RBENV: Administracion de versiones de Ruby

1. Clonar repositorio
```bash
mkdir ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
```
2. Modificar ~/.bashrc para poder usar 'rbenv' desde la linea de comando.
```bash
echo '# Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo '# Add rbenv init to your shell to enable shims and autocompletion.' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
```
## RUBY-BUILD: Instalador de versiones de Ruby
Se recomienda instalarlo como un plugin de rbenv:
```bash
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### ZLIB: Libreria critica para Bundler

(Tomado de la Wiki de ruby-build sobre [Missing zlib](https://github.com/sstephenson/ruby-build/wiki#missing-zlib))

Para instalar Bundler, se requiere la libreria `zlib` y que Ruby este compilado para utilizarla. Por ello, hay que instalarla antes de instalar un Ruby.

```bash
sudo apt-get install zlib1g-dev
```

## RUBY (elige tu version!)

Ahora se puede instalar el/los rubies que uno desee, utilizando 'rbenv install [ruby-version]'. Luego de cada instalacion, se debe correr 'rbenv rehash' para terminarla. Por ejemplo:

```bash
rbenv install 1.9.3-p327
rbenv rehash
```

## BUNDLER: Administrador de gemas
Herramienta indispensable para administrar las gemas 
```bash
gem install bundler
```

La documentacion de las gemas suele demorar mucho sus instalaciones. Para evitar descargarla e instalarla, se puede midificar ~/.gemrc:
```bash
echo 'gem: --no-ri --no-rdoc' >> ~/.gemrc
```
Alternativamente, se puede usar el dotfile para `gem` incluido en este repo (`cp dotfiles/gemrc ~/.gemrc`)

Recordar que cada version de Ruby instalada requiere su version de Bundler propia!

## TROUBLESHOOTING

1. Varias gemas que requieren OpenSSL (oauth[2], google_drive, capistrano al menos) no funcionaban. Instalando libssl-dev y recompilando el ruby (si es que ya esta instalado) se soluciona. Por ejemplo:

```bash
sudo apt-get install libssl-dev
rbenv uninstall 1.9.3-p327
rbenv install 1.9.3-p327
rbenv rehash
```
