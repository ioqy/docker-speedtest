FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y curl && \
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash && \
    apt-get install -y speedtest && \
    apt-get remove -y curl && \
    apt-get autoclean -y && \
    rm -rf /var/lib/apt/lists/*

CMD ["speedtest", "--accept-license", "--accept-gdpr"]
