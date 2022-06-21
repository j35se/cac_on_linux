#! /bin/bash
sudo apt install libpcsclite1 pcscd pcsc-tools -y
sudo apt install opensc -y
sudo systemctl start pcscd
sudo systemctl enable pcscd
wget https://militarycac.com/maccerts/AllCerts.zip
sudo unzip AllCerts.zip -d /usr/share/ca-certificates/mozilla
sudo update-ca-certificates
pcsc_scan
