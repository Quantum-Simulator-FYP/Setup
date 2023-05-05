#!/bin/bash

timezone = "Australia/Melbourne"

sudo apt update -y
sudo apt -y full-upgrade
timedatectl set-timezone $timezone

sudo apt install avahi-daemon -y            # for .local domain
sudo apt-get install python3-venv -y        # for python virtual environment
sudo apt-get install gcc g++ python3-dev -y # for build wheels

# Use piwheels.org for faster installation
echo "[global]
extra-index-url=https://www.piwheels.org/simple" > /etc/pip.conf

python3 -m venv qiskitenv
source qiskitenv/bin/activate
pip install --upgrade pip
pip install qiskit==0.24