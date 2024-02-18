FROM alpine:latest
LABEL org.opencontainers.image.source="https://github.com/lotusnetwork/bodhi-docker"
RUN apk add --no-cache fish curl file
RUN curl -sL "https://github.com/lotusnetwork/bodhi/raw/main/product" -o /opt/product && chmod +x /opt/product
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
