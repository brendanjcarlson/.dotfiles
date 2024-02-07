#!/usr/bin/env bash

LENGTH=$1

if [ -z "$LENGTH" ]; then
    LENGTH=32
fi

openssl rand -base64 $LENGTH | tr -d \\n | pbcopy

if [ $? -eq 0 ]; then
    echo "Secret copied to clipboard"
else
    echo "Failed to copy secret to clipboard"
fi
