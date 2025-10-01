#!/bin/bash
# Kali Linux keyring update script - 2025

set -e  # exit immediately if a command fails

# Download the latest Kali archive keyring package
echo "[*] Downloading Kali archive keyring..."
wget -q https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2025.1_all.deb -O kali-archive-keyring_2025.1_all.deb

# Install the keyring
echo "[*] Installing keyring..."
sudo dpkg -i kali-archive-keyring_2025.1_all.deb

# Remove the downloaded file
echo "[*] Cleaning up..."
rm -f kali-archive-keyring_2025.1_all.deb

# Update sources.list with Berkeley mirror
echo "[*] Updating sources.list..."
sudo bash -c 'cat > /etc/apt/sources.list <<EOF
deb https://mirrors.ocf.berkeley.edu/kali kali-rolling main non-free contrib
EOF'

# Update package lists
echo "[*] Running apt-get update..."
sudo apt-get update -y

echo "[✔] Done! Your Kali sources and keyring are updated."
