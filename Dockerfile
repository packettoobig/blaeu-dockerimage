# BEGIN
FROM pilbbq/debian
WORKDIR /root
RUN apt-get -qq update && \
    apt-get -qq install python3-pip && \
    pip3 install -r requirements.txt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# END	
