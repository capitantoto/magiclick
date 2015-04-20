# RBENV

mkdir ~/.rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
## Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
## Add rbenv init to your shell to enable shims and autocompletion.
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

## RUBY-BUILD
## Installing as an rbenv plugin (recommended)
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

