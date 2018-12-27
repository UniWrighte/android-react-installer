#!/bin/bash

sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
unzip  ~/Downloads/android-studio-ide* -d ./
sudo mv ./android-studio /usr/local/
cd /usr/local/android-studio/bin

./studio.sh
