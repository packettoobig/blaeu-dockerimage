# BEGIN
FROM alpine
WORKDIR /root
COPY requirements.txt ./
RUN apk -qq update && \
    apk -qq add py-pip && \
    pip3 install -r requirements.txt && \
    rm -rf requirements.txt
ENTRYPOINT ["blaeu-reach"]
CMD ["--help"]
# END
