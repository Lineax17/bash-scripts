#!/bin/bash

echo "System: $(du -sh /var/lib/flatpak 2>/dev/null | cut -f1), User: $(du -sh ~/.local/share/flatpak 2>/dev/null | cut -f1)"
