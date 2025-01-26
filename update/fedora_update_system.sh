#!/bin/bash

sudo dnf update -y --refresh 

flatpak update -y

# Rebuild Nvidia drivers

sudo akmods

sudo dracut -f --regenerate-all
