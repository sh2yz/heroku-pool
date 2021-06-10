#!/bin/sh

# download
# wget https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/proxypoolv0.7.3 -O proxypool
# chmod +x proxypool
# wget https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/source.yaml -O source.yaml
# wget https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/config.yaml -O config.yaml
sed  -i "s/port:/port: $PORT/g" /config.yaml 
sed  -i "s/127.0.0.1/$DOMAIN/g" /config.yaml 
# wget https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/assets.zip -O assets.zip
# unzip -d assets assets.zip

/proxypoolv0.7.3 -c config.yaml &

