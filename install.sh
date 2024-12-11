#!/bin/bash

# Install Chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)"
chezmoi init https://github.com/NickBurnett/chezmoi.git
chezmoi apply
