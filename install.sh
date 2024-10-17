#!/bin/bash
curdir=$(dirname $0)

# install dotfiles
mv $(curdir)/.nick ~/.nick
mv $(curdir)/.zshrc ~/.zshrc
