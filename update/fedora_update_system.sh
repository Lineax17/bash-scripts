#!/bin/bash

sudo dnf update -y --refresh 

flatpak update

# Rebuild Nvidia drivers

sudo akmods

sudo dracut -f --regenerate-all
