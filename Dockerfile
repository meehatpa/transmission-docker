FROM alpine:3.17

RUN apk --no-cache add transmission-daemon \
    && mkdir -p /transmission/config \
    && chmod -R 1777 /transmission \
    && rm -rf /tmp/*


STOPSIGNAL SIGTERM
ENTRYPOINT ["/usr/bin/transmission-daemon", "--foreground", "--config-dir", "/transmission/config"]
