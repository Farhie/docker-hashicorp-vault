FROM alpine:3.7

ENV VAULT_VERSION=0.9.6

# Current assumption of amd64 CPU architecture
ENV CPU_ARCHITECTURE="amd64"

RUN echo $CPU_ARCHITECTURE && \
    mkdir /tmp/vault && \
    cd /tmp/vault && \
    wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${CPU_ARCHITECTURE}.zip && \
    unzip -d /bin vault_${VAULT_VERSION}_linux_${CPU_ARCHITECTURE}.zip && \
    cd ~ && \
    rm -rf /tmp/vault && \
    vault -v
