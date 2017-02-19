#!/bin/bash

pushd . 
mkdir -p mount/installers
cd mount/installers
wget $ALF_URL
chmod 755 $ALF_BIN
popd
