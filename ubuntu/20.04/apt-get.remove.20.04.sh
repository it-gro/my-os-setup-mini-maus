#!/bin/bash
cd $(dirname $0)

for deb in $(cat remove/${HOSTNAME}.20.04.*list | sed 's/#.*//'); do
    set -x
    sudo apt-get remove --purge $deb
    set +x
done

set -x
sudo apt-get autoremove


dpkg -l | awk  '/^rc/{print $2;}' | xargs --no-run-if-empty sudo dpkg -P
