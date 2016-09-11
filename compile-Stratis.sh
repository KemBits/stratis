#!/bin/bash
# This will fully build stratisd, stratis-cli, and stratis-qt on Ubuntu 14.04 from source
# Please chmod +x compile-Stratis.sh before using

sudo apt-get install build-essential libtool \
autotools-dev automake pkg-config libssl-dev \
libevent-dev bsdmainutils software-properties-common \
libboost-system-dev libboost-filesystem-dev \
libboost-chrono-dev libboost-program-options-dev \
libboost-test-dev libboost-thread-dev qt5-qmake \
libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev \
qttools5-dev-tools libprotobuf-dev protobuf-compiler \
libqrencode-dev

sudo add-apt-repository ppa:bitcoin/bitcoin -y
# Adds Berkeley DB
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
# This builds Stratis GUI, will take some time
git clone https://github.com/stratisproject/stratis.git
cd stratis/src/secp256k1
./autogen.sh
./configure
make
cd ..;cd ..
./autogen.sh
./configure
make
echo "All done, enjoy!"
