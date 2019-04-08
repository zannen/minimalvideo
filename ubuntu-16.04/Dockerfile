FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive DISPLAY=:0
RUN apt update && apt install -y x11-apps
ENTRYPOINT ["/entrypoint.sh"]
ADD entrypoint.sh /
