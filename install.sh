#!/bin/bash

# Install Chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"
export PATH="$PATH:/home/bits/bin"
chezmoi init https://github.com/NickBurnett/chezmoi.git
chezmoi apply
