#!/bin/bash

sudo dnf update -y --refresh 

flatpak update -y

# Rebuild Nvidia drivers (Nvidia users only)

sudo akmods

# Rebuild inital ram filesystem (all users)

sudo dracut -f --regenerate-all
