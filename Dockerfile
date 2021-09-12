FROM ubuntu:latest

RUN apt update && \
    apt install -y ca-certificates tzdata wget unzip sudo 
#     wget -O proxypool-linux-amd64.zip https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/proxypool-linux-amd64.zip && \
#     unzip proxypool-linux-amd64.zip && \
#     chmod +x /proxypoolv0.7.3 && \
#     sed -i "s/port:/port: $PORT/g" /config.yaml && \
#     sed -i "s/127.0.0.1/$DOMAIN/g" /config.yaml && \
#     rm -rf /var/cache/apk/*  && \
#     touch pool.log 
#ENTRYPOINT ["/proxypoolv0.7.3", "-c", "/config.yaml", ">pool.log"]

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
