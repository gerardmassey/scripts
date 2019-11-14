#!/bin/bash

add-apt-repository ppa:mrazavi/openvas
apt update
apt install sqlite3 -y
apt install openvas9 -y 
apt install texlive-latex-extra --no-install-recommends -y
apt install texlive-fonts-recommended -y
apt install libopenvas9-dev -y
greenbone-nvt-sync
greenbone-scapdata-sync
greenbone-certdata-sync
systemctl restart openvas-scanner
systemctl restart openvas-manager
systemctl restart openvas-gsa
systemctl enable openvas-scanner
systemctl enable openvas-manager
systemctl enable openvas-gsa
openvasmd --rebuild --progress
