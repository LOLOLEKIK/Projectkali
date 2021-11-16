#!/bin/bash

favorite="$(gsettings get org.gnome.shell favorite-apps)"
new="['org.gnome.Nautilus.desktop', 'install4j_8kyqom-BurpSuiteCommunity.desktop', 'firefox.desktop']"
desktop="$(gsettings get org.gnome.desktop.background picture-uri)"
sudo cp kali /usr/bin/
sudo sed -i "s/REPLACEOLD/\"${favorite}\"/g" /usr/bin/kali
sudo sed -i "s/REPLACENEW/\"${new}\"/g" /usr/bin/kali
sudo sed -i "s#REPLACEDESKTOP#${desktop}#g" /usr/bin/kali
sudo mkdir -p /usr/share/kaliproject
sudo cp .bashrc.new /usr/share/kaliproject
sudo cp Dockerfile /usr/share/kaliproject/
sudo cp pentest.png /usr/share/kaliproject/

#test
if [ -e /usr/bin/kali -a -e /usr/share/kaliproject/pentest.png -a -e /usr/share/kaliproject/Dockerfile ]
then
    echo "L'installation semble avoir fonctionné"
else
    echo "L'installation semble avoir échoué, tous les fichiers ne se sont pas créés"
fi
