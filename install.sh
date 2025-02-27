#!/bin/bash

# Install Chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"
mv /home/bits/bin/chezmoi /home/bits/.local/bin
chezmoi init https://github.com/NickBurnett/chezmoi.git
chezmoi apply
