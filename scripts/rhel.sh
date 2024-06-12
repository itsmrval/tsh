#!/bin/bash

echo "[1/2] Updating packages"
yum -q -y update
yum -q -y install wget tmate

if rpm -q wget &>/dev/null; then
    echo "[OK] wget installed"
else
    echo "[FAILED] wget install failed"
    exit 1
fi

if rpm -q tmate &>/dev/null; then
    echo "[OK] tmate installed"
else
    echo "[FAILED] tmate install failed"
    exit 1
fi

echo "[2/2] Downloading config file..."
rm -rf ~/.tmate.conf 
wget -qO ~/.tmate.conf https://raw.githubusercontent.com/itsmrval/tsh/main/.tmate.conf

if [ -f ~/.tmate.conf ]; then
    echo "[OK] config installed"
else
    echo "[FAILED] config install failed"
    exit 1
fi

echo "[SUCCESS] Script ended"
