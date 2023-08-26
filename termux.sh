#!/data/data/com.termux/files/usr/bin/bash

# Mettre à jour les référentiels et le gestionnaire de paquets
pkg update
pkg upgrade

# Installer les packages de base
pkg install -y git wget curl vim nano

# Installer Go
pkg install -y golang

# Installer Python
pkg install -y python python-dev

# Installer le compilateur C
pkg install -y clang

# Autres utilitaires
pkg install -y tmux htop

echo "Configuration terminée. Profitez de Termux !"
