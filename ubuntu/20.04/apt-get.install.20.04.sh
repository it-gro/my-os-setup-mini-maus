#!/bin/bash
cd $(dirname $0)

set -xv
sudo apt-get install $(cat               \
       packages/all.20.04.*list          \
       packages/${HOSTNAME}.20.04.*list  \
     | sed 's/#.*//')
