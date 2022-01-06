# Projectkali
## Introduction
Le projet Kali permet de pouvoir faire du pentest  dans son environnement linux habituel en virtualisant un container Kali. Cela permet de s'affranchir de l'utilisation d'une machine virtuelle en gardant un environnement isolé. Uniquement les applications comme graphique, comme burpsuite, ne sont pas isolées.

## Pre-requis
1. Installer burpsuite version community dans notre cas : 
https://portswigger.net/burp/communitydownload
2. Il faut aussi installer docker

```
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

## Install
Aller dans le dossier git lancer **sans utiliser sudo**
```
chmod +x install.sh
./install.sh
```

Une fois le tout installer vous pouvez lancer la préparation de l'image (l'étape met beaucoup de temps)
```
kali build
```
## Personnalisation
### Fonds d'écrans
Pour personaliser le fond d'écran lorsque vous êtes en mode pentest, vous pouvez vous rendre dans le répertoire ci-dessous et remplacer **pentest.png**
```
/usr/share/kaliproject/
```

Pour modifier le fond d'écran en mode normal vous devrez modifier le fichier le script kali dans 
```
/bin/kali
```

et remplacer la ligne suivante dans la partie "down" en ajoutant le bon chemin.
```
gsettings set org.gnome.desktop.background picture-uri CHEMIN
```

### Barre favoris
Afin de modifier la barre de favoris, faites glisser les applications à l'intérieur et une fois que la composition vous satisfait utilisez la commande suivante :
```
gsettings get org.gnome.shell favorite-apps
```
Copiez ensuite la chaine de charactère et aller la remplacer dans l'endroit voulu dans le script à l'emplacement ci-dessous :
```
/bin/kali
```

**Attention** : Si vous remplacez dans le UP n'oubliez pas de remplacer dans le resume aussi.

## Help
```
lololekik@pop-os:~/Documents/KaliProject$ kali -h
Bienvenue dans l'aide
		up		Lance le container
		down		Supprime le container
		resume		Relance le container pour reprendre un pentest
		build		Construit l'image kali
		delete		Supprime l'image
Auteur : LOLOLEKIK

```
