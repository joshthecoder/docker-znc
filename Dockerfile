FROM        ubuntu:14.04
MAINTAINER  Josh Roesslein "http://github.com/joshthecoder/docker-znc"

RUN         apt-get update && \
            apt-get install -y znc znc-python

USER        daemon
EXPOSE      6667
VOLUME      ["/var/znc"]
ENTRYPOINT  ["znc"]
CMD         ["--foreground", "--datadir=/var/znc"]
