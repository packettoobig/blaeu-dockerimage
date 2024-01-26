# BEGIN
FROM python:slim
WORKDIR /root
CMD ["--help"]
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt && \
    rm -rf requirements.txt
RUN groupadd -g 10001 blaeu && \
    useradd -u 10000 -g blaeu blaeu
USER blaeu:blaeu
CMD ["blaeu-reach","--help"]
# END
