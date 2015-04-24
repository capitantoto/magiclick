# Pasos para leer Gmail con Mutt desde la terminal. Sigue:
# https://help.ubuntu.com/community/MuttAndGmail

echo "Install openssl and ca-certificates" # This was not necessary on 14.04.2
sudo apt-get install openssl ca-certificates

echo "Install msmtp"
sudo apt-get install msmtp

echo "Create empty configuration files"
touch $HOME/.msmtprc
touch $HOME/.msmtp.log
chmod 600 $HOME/.msmtprc

echo "Configure msmtp (copy the dotfile)"
cp dotfiles/msmtprc $HOME/.msmtprc

echo "Install fetchmail"
sudo apt-get install fetchmail
echo "Configure fetchmail"
cp dotfiles/fetchmailrc $HOME/.fetchmailrc
chmod 600 $HOME/.fetchmailrc

echo "Install procmail for mail delivery"
sudo apt-get install procmail

echo "# Sets the MAIL environment variable" >> $HOME/.bashrc
echo "MAIL=/var/spool/mail/gonzalo && export MAIL" >> $HOME/.bashrc
source $HOME/.bashrc

echo "Configure procmail"
mkdir $HOME/Mail
cp dotfiles/procmailrc $HOME/.procmailrc

echo "Install and configure mutt"
sudo apt-get install mutt
cp dotfiles/muttrc $HOME/.muttrc

