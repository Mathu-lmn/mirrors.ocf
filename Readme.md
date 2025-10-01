# 2025 Kali keyring update

## Step 1 : Download
wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2025.1_all.deb

## Step 2 : Install keyring
sudo dpkg -i kali-archive-keyring_2025.1_all.deb

## Step 3 : Clear the keyring after its installation
rm kali-archive-keyring_2025.1_all.deb

## Step 4 : Edit sources 
sudo nano /etc/apt/sources.list
deb https://mirrors.ocf.berkeley.edu/kali kali-rolling main non-free contrib

## Step 5 : Try updating again
sudo apt-get update -y
