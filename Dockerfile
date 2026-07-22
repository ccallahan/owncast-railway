FROM owncast/owncast:latest

COPY railway-entrypoint.sh /railway-entrypoint.sh
RUN chmod +x /railway-entrypoint.sh

ENTRYPOINT ["/railway-entrypoint.sh"]
