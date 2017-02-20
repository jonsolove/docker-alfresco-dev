#!/bin/bash

pushd . 
mkdir -p host/installers
cd host/installers
wget $ALF_URL
chmod 755 $ALF_BIN
popd
