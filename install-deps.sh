#!/bin/bash

# Install yay if not already installed
if ! command -v yay &> /dev/null; then
  echo "Yay is not installed. Installing yay..."
  sudo pacman -S git --noconfirm
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

# Clone and install ascii-image-converter-git
echo "Installing ascii-image-converter-git..."
git clone https://aur.archlinux.org/ascii-image-converter-git.git
cd ascii-image-converter-git/
makepkg -si --noconfirm
cd ..
rm -rf ascii-image-converter-git/

# Install ranger, python-pynvim, and ueberzug
echo "Installing ranger, python-pynvim, and ueberzug..."
yay -S ranger python-pynvim ueberzug --noconfirm

# Clone and install reivim
echo "Installing reivim..."
git clone https://github.com/masrenda/reivim.git
cd reivim
mv nvim ~/.config/
cd ..
rm -rf reivim
