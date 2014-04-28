ZNC Docker
==========
Run the ZNC IRC bouncer in a Docker container.

Install Docker
--------------
Learn about [Docker](https://www.docker.io/) and how to install it by viewing their nice documentation.

Get the ZNC Docker Image
------------------------
You can pull down a prebuilt image from the Docker repository:

    docker pull joshthecoder/znc

Or you can clone this repository and build it yourself:

    git clone git://github.com/joshthecoder/docker-znc.git && cd docker-znc
    docker build -t znc .

Configure ZNC
-------------
You will need to configure your ZNC server. We will use the ZNC binary to generate one for us.
If you already have a ZNC configuration file just copy it into ~/.znc/configs and skip this step.
Let's start up a ZNC Docker container and setup our configuration:

    mkdir ~/.znc
    docker run -i -t -v ~/.znc:/opt/.znc znc --makeconf

Follow the prompts and once it is done it will save the configuration
into the mounted ~/.znc folder on your host machine. When it asks to start
the ZNC server choose __no__.

Launching ZNC
-------------
Let's run a new instance of ZNC by starting a Docker container.

    docker run -d -p 6667 -v ~/.znc:/opt/.znc znc

You now have ZNC running on port 6667 and should be able to connect to it with your IRC client!

Other Useful Commands
---------------------
If you need to invoke ZNC with your own custom options (ex: checking ZNC version):

    docker run -i -t znc --version

To get a listing of all supported options:

    docker run -i -t znc --help

Feedback
--------
If you have troubles or have an improvement open an issue / pull request.

Credits
-------
 - The ZNC team for building an awesome bouncer!
 - Jim's [docker-znc](https://github.com/jimeh/docker-znc) that inspired this Docker image.
