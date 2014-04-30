FROM        ubuntu:14.04
MAINTAINER  Josh Roesslein "http://github.com/joshthecoder/docker-znc"

RUN         apt-get update && \
            apt-get install -y znc znc-python

RUN         useradd znc && \
            chown -R znc:znc /opt/znc

USER        znc
VOLUME      ["/opt/znc"]
EXPOSE      6667
ENTRYPOINT  ["znc", "--datadir=/opt/znc"]
CMD         ["--foreground"]
