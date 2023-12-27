#!/bin/bash

# Script pour installer Docker sur Xubuntu

# Mise à jour des paquets existants
echo "Mise à jour des paquets..."
sudo apt-get update

# Installation des prérequis pour Docker
echo "Installation des prérequis..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Ajout de la clé GPG officielle de Docker
echo "Ajout de la clé GPG de Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Ajout du dépôt Docker aux sources APT
echo "Ajout du dépôt Docker..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Mise à jour des paquets après ajout du dépôt
echo "Mise à jour des paquets..."
sudo apt-get update

# Installation de Docker CE
echo "Installation de Docker CE..."
sudo apt-get install -y docker-ce

# Affichage de la version de Docker pour confirmer l'installation
echo "Vérification de l'installation de Docker..."
sudo docker --version

# Activation et démarrage du service Docker
echo "Activation et démarrage du service Docker..."
sudo systemctl enable docker
sudo systemctl start docker

# Ajout de l'utilisateur actuel au groupe Docker pour exécuter Docker sans sudo
echo "Ajout de l'utilisateur $(whoami) au groupe Docker..."
sudo usermod -aG docker ${USER}

echo "Installation de Docker terminée avec succès!"
echo "Veuillez vous déconnecter et vous reconnecter pour que les modifications prennent effet."
