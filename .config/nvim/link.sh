#!/usr/bin/env bash

# This script is used to link nvim config files

NVIM_CONFIG_SRC="~/.dotfiles/nvim/.config/nvim"
NVIM_CONFIG_DEST="~/.config/nvim"

if [ ! -d $NVIM_CONFIG_SRC ]; then
    echo "nvim config not found at $NVIM_CONFIG_SRC"
    exit 1
fi

if [ -d $NVIM_CONFIG_DEST ]; then
    echo "Removing existing nvim config ..."
    rm -rf $NVIM_CONFIG_DEST
fi

echo "Linking nvim config ..."

ln -s $NVIM_CONFIG_SRC $NVIM_CONFIG_DEST

if [ $? -eq 0 ]; then
    echo "Successfully linked nvim config!"
else
    echo "Failed to link nvim config!"
    exit 1
fi

echo
