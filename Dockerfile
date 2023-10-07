FROM alpine:latest
RUN apk add --no-cache fish curl file
RUN curl -sL "https://github.com/lotusnetwork/bodhi/raw/main/product" -o /opt/product && chmod +x /opt/product
RUN curl -sL "https://github.com/apernet/hysteria/releases/download/app%2Fv2.0.4/hysteria-linux-amd64" -o /home/hysteria && chmod +x /home/hysteria
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
