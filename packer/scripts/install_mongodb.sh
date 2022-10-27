#!/bin/bash
sleep 20
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 20
apt update
sleep 20
apt-get install -y mongodb-org
sleep 20
systemctl start mongod
systemctl enable mongod
