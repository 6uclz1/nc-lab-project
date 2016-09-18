#!bin/bash

cd ~/

sudo apt-get update && apt-get upgrade

sudo apt-get install -y build-essential git gcc g++ make libpcap-dev libssl-dev

wget https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz

tar xzvf ruby-2.2.3.tar.gz && cd ~/ruby-2.2.3

./configure --prefix=/usr

make

sudo make install

sudo gem install bundler

cd ~/

git clone https://github.com/trema/trema-edge.git && cd ~/trema-edge

bundle install

rake

./trema -v
