FROM        ubuntu:14.04
MAINTAINER  Josh Roesslein "http://github.com/joshthecoder/docker-znc"

RUN         apt-get update &&
            apt-get install -y znc znc-dbg znc-dev znc-python

USER        daemon
EXPOSE      6667
ENTRYPOINT  ["znc"]
CMD         ["--foreground", "--datadir=/znc-data"]
