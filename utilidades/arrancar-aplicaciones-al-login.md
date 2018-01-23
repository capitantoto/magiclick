# Correr aplicaciones al encender la PC
Tomado de [askubuntu](https://askubuntu.com/questions/48321/how-do-i-start-applications-automatically-on-login)

Advanced users may want to put a .desktop file in ~/.config/autostart to run applications after a user login. This may have following content:
```
[Desktop Entry]
Type=Application
Vestion=1.0
Name=Franz
Comment=Franz startup script
Exec=/storage/programas/franz/Franz
StartupNotify=false
Terminal=false
```
