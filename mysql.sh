#!/bin/bash

# Étape 1: Mettre à jour les paquets du système
echo "Mise à jour des paquets du système..."
sudo apt-get update
sudo apt-get upgrade -y

# Étape 2: Installer MySQL Server
echo "Installation de MySQL Server..."
sudo apt-get install mysql-server -y

# Étape 3: Démarrer le service MySQL et l'activer au démarrage
echo "Démarrage du service MySQL..."
sudo systemctl start mysql
sudo systemctl enable mysql

# Étape 4: Exécuter le script de sécurisation (mysql_secure_installation)
echo "Exécution du script de sécurisation de MySQL..."
# Note: Vous devrez interagir avec ce script pour configurer les paramètres de sécurité
sudo mysql_secure_installation

# Étape 5: Se connecter à MySQL en tant que root avec sudo (pas de mot de passe nécessaire)
echo "Connexion à MySQL..."
sudo mysql -u root

# Les commandes MySQL suivantes sont à exécuter dans le shell MySQL

# Pour changer la méthode d'authentification et définir un mot de passe pour root:
# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'votre_nouveau_mot_de_passe';
# FLUSH PRIVILEGES;
# exit;
