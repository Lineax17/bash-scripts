#!/bin/bash

# Check if kernel updates are available and ask for an extra confirmation
dnf -q check-update kernel\* >/dev/null 2>&1
rc=$?
if [ "$rc" -eq 100 ]; then
	echo "Kernel update detected. The following kernel packages have updates available:"
	dnf list --upgrades kernel\* --refresh || true
	echo
	read -r -p "Proceed and install the kernel update? [y/N]: " confirm
	case "$confirm" in
		[yY]|[yY][eE][sS])
			;;
		*)
			echo "Aborted: Kernel update detected and not confirmed."
			exit 1
			;;
	esac
elif [ "$rc" -ne 0 ] && [ "$rc" -ne 100 ]; then
	echo "Warning: 'dnf check-update' failed (RC=$rc). Continuing without kernel check."
fi

sudo dnf update -y --refresh 

flatpak update -y

# Rebuild Nvidia drivers (Nvidia users only)

sudo akmods

# Rebuild inital ram filesystem (all users)

sudo dracut -f --regenerate-all

echo "System upgrade completed. Go tell everyone you use Linux!"
