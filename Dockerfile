FROM        ubuntu:12.04
MAINTAINER  Josh Roesslein "http://github.com/joshthecoder/docker-znc"

RUN         apt-get update && \
            apt-get install -y znc znc-python

RUN         useradd -m -d /opt/znc znc && \
            chown -R znc:znc /opt/znc

USER        znc
EXPOSE      6667
ENTRYPOINT  ["znc"]
CMD         ["--foreground"]
