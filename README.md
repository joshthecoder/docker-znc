ZNC Docker
==========
Run the ZNC IRC bouncer in a Docker container.

Setup
-----
 - Learn about [Docker](https://www.docker.io/) and install it on your host system.
 - Pull down the latest Docker image:
   - `docker pull joshthecoder/znc`
 - Or if you want to build it yourself:
   - `git clone git://github.com/joshthecoder/docker-znc.git && cd docker-znc`
   - `docker build -t znc .`
 - Run ZNC in a new Docker container:
   - `docker run -d -p 6667 joshthecoder/znc`
   - The container expects to have a ZNC data volume that contains your configuration and is used to store data.
 - Connect to ZNC and enjoy!

Feedback
--------
If you have troubles or have an improvement open an issue / pull request.

Credits
-------
 - The ZNC team for building an awesome bouncer!
 - Jim's [docker-znc](https://github.com/jimeh/docker-znc) that inspired this Docker image.
