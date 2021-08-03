#!/bin/bash
cd $(dirname $0)

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

./apt-get.remove.20.04.sh
