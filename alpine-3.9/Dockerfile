FROM alpine:3.9
ENV DISPLAY=:0
RUN apk add --update --no-cache xeyes
ENTRYPOINT ["/entrypoint.sh"]
ADD entrypoint.sh /
