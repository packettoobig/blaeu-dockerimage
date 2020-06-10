# BEGIN
FROM pilbbq/debian
WORKDIR /root
COPY .bashrc ./
RUN apt-get -qq update && \
    apt-get -qq install python3-pip && \
    pip3 install blaeu && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* &&\
# END	
