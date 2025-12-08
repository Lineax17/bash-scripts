#!/bin/bash

sudo dnf update -y

sudo akmods

sudo dracut -f --regenerate-all

flatpak update -y