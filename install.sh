#!/bin/bash

# Install Chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"
mv /home/bits/bin/chezmoi /home/bits/.local/bin
chezmoi init https://github.com/NickBurnett/chezmoi.git
chezmoi apply
sudo apt update && sudo apt install -y libnss3 libatk-bridge2.0-0 libatk1.0-0 libgtk-3-0 libgbm1 libasound2 
