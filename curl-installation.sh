#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^archtitus$ ]]; then
    echo "You are running this in ArchTitus Folder."
    echo "Please use ./archtitus.sh instead"
fi

# Install git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchTitus Project"
git clone https://github.com/christitustech/ArchTitus

echo "Executing ArchTitus Script"

cd $HOME/ArchTitus

exec ./archtitus.sh

exit
