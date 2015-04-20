1. Instalo MRI 1.9.3-p327 (porque es la version que usamos en el laburo), y la marco como la default del sistema.
  `rbenv install 1.9.3-p327 && rbenv global 1.9.3-p327`
2. Intento instalar Bundler con `gem install bundler`, pero devuelve un error
> cannot load such file -- zlib

La wiki de ruby-build sobre [Missing zlib](https://github.com/sstephenson/ruby-build/wiki#missing-zlib), recomiendo instalar zlib y recompilar ruby
```
sudo apt-get install zlib1g-dev
rbenv uninstall 1.9.3-p327
rbenv install 1.9.3-p327
rbenv rehash
```
Y problema resuelto. `gem install bundler` corre sin problemas.

3. La documentacion de las gemas hace que todo tarde muchisimo en instalarse. Copio un .gemrc que especifica saltearse la documentacion a ~/.gemrc
`cp dotfiles/gemrc ~/.gemrc`

4. Varias gemas que requieren OpenSSL (oauth[2], google_drive, capistrano al menos) no funcionaban. Instalando libssl-dev y recompilando el ruby se soluciona:
```
sudo apt-get install libssl-dev
rbenv uninstall 1.9.3-p327
rbenv install 1.9.3-p327
rbenv rehash
```

