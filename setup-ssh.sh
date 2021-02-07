#!/bin/bash

if [ -d "$HOME/.ssh" ]; then
    ssh-keygen -t rsa -b 4096 -C "cdstrawn@gmail.com"
fi
