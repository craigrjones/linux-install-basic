#!/bin/bash

# customise terminal
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

## installs all required software

# update packages
sudo apt update
sudo apt upgrade -y
flatpak update -y

# install apt packages
sudo apt install -y \
barrier \
libreoffice \
steam synaptic \
neofetch \
variety virtualbox vlc

# install ungoogled chromium
wget https://github.com/SugaryHull/ungoogled-chromium-binaries/releases/download/87.0.4280.141-1.unportable1/ungoogled-chromium-common-dbgsym_87.0.4280.141-1.unportable1_amd64.deb -y
sudo apt install ungoogled-chromium-common-dbgsym_87.0.4280.141-1.unportable1_amd64.deb -y

# install bashtop
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
sudo apt install bashtop -y


# install flatpaks
flatpak install -y \
com.getpostman.Postman \
com.github.alainm23.planner	\
com.github.gijsgoudzwaard.image-optimizer \
com.spotify.Client \
com.valvesoftware.Steam.Utility.MangoHud \
io.dbeaver.DBeaverCommunity	\
nl.hjdskes.gcolor3 

#reboot
sudo reboot



