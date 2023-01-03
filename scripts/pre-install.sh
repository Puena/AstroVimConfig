#!/bin/bash
# This script will install dependencies
# Pull this file down, make it executable and run it with sudo
#
# chmod u+x build-erlang.sh
# sudo ./build-erlang.sh
#

if [ "$(id -u)" != "0" ]; then
	echo "You must be the superuser to run this script" >&2
	exit 1
fi

echo "Install or upgrade curl"
packman -Sy --noconfirm curl

echo "Install or upgrade git"
packman -Sy --noconfirm git

echo "Install or upgrade nodejs, npm"
packman -Sy --noconfirm nodejs, npm

echo "Install rust, cargo"
curl https://sh.rustup.rs -sSf | sh

echo "Check go version"
echo "Go version $(go version || echo "go not installed, please install")"

echo "Install Go impl package github.com/josharian/impl@latest"
go install github.com/josharian/impl@latest
