FROM ubuntu:latest

ENV GO_VERSION=1.23.5

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    tar \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz -O /tmp/go.tar.gz \
    && tar -C /usr/local -xzf /tmp/go.tar.gz \
    && rm /tmp/go.tar.gz

ENV PATH="/usr/local/go/bin:${PATH}"

COPY ./scripts/install-go-utils.sh /tmp/install-go-utils.sh

RUN bash /tmp/install-go-utils.sh

