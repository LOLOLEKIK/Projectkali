# Projectkali
## Introduction
Le projet Kali permet de pouvoir faire du pentest  dans son environnement linux habituel en virtualisant un container Kali. Cela permet de s'affranchir de l'utilisation d'une machine virtuelle en gardant un environnement isolé. Uniquement les applications comme graphique, comme burpsuite, ne sont pas isolées.

## Pre-requis
1. Il faut aussi installer docker

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
## Port
Des ports sont mappés afin de pouvoir recevoir les reverse-shell et, plus gobalement, communiquer avec les machines.

Il s'agit des port 9800 à 9900

## Patage

Afin de partager des fichiers plus efficacement avec l'hôte vous pouvez vous rendre dans
```
/share/kali
```

## Ne vous souvenez plus des commandes !

Si vous êtes habitué à utiliser des commandes et que vous ne vous rappelez jamais de la syntax, vous avez juste à les rajouter dans le fichier

```
/usr/share/kaliproject/history
```

J'en ajoute aussi très souvent, il ne manque plus qu'à faire une recherche récursive et le tour est joué ;)

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
