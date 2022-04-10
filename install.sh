#!/bin/bash

sudo cp kali /usr/bin/
sudo mkdir -p /usr/share/kaliproject
sudo mkdir -p /share/kali
sudo cp .bashrc.new /usr/share/kaliproject
sudo cp Dockerfile /usr/share/kaliproject/
sudo cp history /usr/share/kaliproject/
#test
if [ -e /usr/bin/kali -a -e /share/kali -a -e /usr/share/kaliproject/Dockerfile -a -e /usr/share/kaliproject/history ]
then
    echo "L'installation semble avoir fonctionné"
else
    echo "L'installation semble avoir échoué, tous les fichiers ne se sont pas créés"
fi
