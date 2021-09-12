#!/bin/sh


    wget -O proxypool-linux-amd64.zip https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/proxypool-linux-amd64.zip
    unzip proxypool-linux-amd64.zip 
    chmod +x /proxypoolv0.7.3 
    sed -i "s/port:/port: $PORT/g" /config.yaml 
    sed -i "s/domain:  127.0.0.1/domain:  $DOMAIN/g" /config.yaml 
    rm -rf /var/cache/apk/* 
    touch pool.log 
    /proxypoolv0.7.3 -c /config.yaml >pool.log

