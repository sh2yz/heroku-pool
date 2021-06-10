FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates tzdata wget && \
    wget https://github.com/jth445600/hello-world/raw/master/proxypool-linux-amd64/proxypoolv0.7.3 -O proxypool && \
    chmod +x /proxypool && \
    rm -rf /var/cache/apk/*
    
    
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
