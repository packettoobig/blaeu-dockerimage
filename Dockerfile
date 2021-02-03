# BEGIN
FROM python:slim
WORKDIR /root
CMD ["--help"]
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt && \
    rm -rf requirements.txt
CMD ["blaeu-reach","--help"]
# END
