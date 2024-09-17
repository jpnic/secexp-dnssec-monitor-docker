FROM golang:latest

WORKDIR /

ENV PATH=$PATH:/usr/local/go/bin

RUN go install github.com/chrj/prometheus-dnssec-exporter@latest

EXPOSE 9204

ENTRYPOINT ["prometheus-dnssec-exporter"]
CMD ["-config", "/config/dnssec-checks.conf"]

