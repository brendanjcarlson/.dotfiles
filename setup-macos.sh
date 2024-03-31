#!/usr/bin/env bash

stowpackages="git,nvim,ohmyzsh,scripts,tmux,zsh"

IFS="," read -r -a stowarray <<< "$stowpackages"

for package in "${stowarray[@]}"; do
    stow $package
done
