#!/bin/bash

echo "[1/2] Updating packages"
apt update -qq
apt install -y -qq wget tmate

if dpkg -l | grep -q wget; then
    echo "[OK] wget installed"
else
    echo "[FAILED] wget install failed"
    exit 1
fi

if dpkg -l | grep -q tmate; then
    echo "[OK] tmate installed"
else
    echo "[FAILED] tmate install failed"
    exit 1
fi

echo "[2/2] Downloading config file..."
rm -rf ~/.tmate.conf 
wget -qO ~/.tmate.conf https://raw.githubusercontent.com/itsmrval/tsh/main/config/.tmate.conf

if [ -f ~/.tmate.conf ]; then
    echo "[OK] config installed"
else
    echo "[FAILED] config install failed"
    exit 1
fi

echo "[SUCCESS] Script ended"
