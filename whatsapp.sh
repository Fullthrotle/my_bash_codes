#!usr/bin/bash

echo "we will start installing whatsapp in 3 seconds"

cd home 

git clone https://aur.archlinux.org/nodejs-nativefier 

cd nodejs-nativefier

makepkg -s

sudo pacman -U --noconfirm nodejs-nativefier*

git clone https://aur.archlinux.org/whatsapp-nativefier.git

cd whatsapp-nativefier

makepkg -s

sudo pacman -U  whatsapp-nativefier*

echo whatsapp has been installed sucessfully

sleep 3s

echo "removing obsolete packages"

rm -rf whatsapp-nativefier  nodejs-nativefier

echo " done , enjoy :) "
sleep 2s

echo "opening whatsapp in 2s"

sleep 2s

whatsapp-nativefier

exit
