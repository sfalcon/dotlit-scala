Literate Scala
==============
Sample Literate Scala project using [Dotlit].


Dotlit
------
[Doclit] is a literate programming source code preprocessor. It takes Markdown
files and extracts code blocks into source files. Used as a preprocessor, this
means you can write literate style source code in any language.

It comes as a [NodeJS] module and is a Grunt plugin is
[available](https://github.com/zoopdoop/grunt-dotlit). The respective NPM
modules are [dotlit](https://npmjs.org/package/dotlit) and
[grunt-dotlit](https://npmjs.org/package/grunt-dotlit).



Docker.io
---------
[Docker] is a lightweight containerization technique that is useful for
controlling system dependencies. Like virtualisation but much faster for
development.

A `Dockerfile` definition is included which creates a container with all the
necessary software to run this sample project.

Ensure docker is installed and the daemon is running. On Ubuntu, run the
following:

    sudo sh -c "curl http://get.docker.io/gpg | apt-key add -"
    sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
    sudo apt-get update
    sudo apt-get install lxc-docker
    sudo service docker start

List currently available Docker images using:

     sudo docker images

Build and install the image for dotlit locally using:

     sudo docker build -t dotlit .

Run the dotlit container and attach an interactive shell.

     sudo docker run -i -t dotlit /bin/bash -l

Remove a Docker image permanently using:

     sudo docker rmi <image>


Running Example
---------------
Build the Docker image and shell onto it:

    sudo docker build -t dotlit .
    sudo docker run -i -t dotlit /bin/bash -l

Install Node dependencies.

    cd /dotlit
    npm install

Run the Grunt task to build `.scala` files:

    grunt

Run a generated Scala script. (Note: Docker doesn't like the background Scala
compiler daemon.)

    scala -nocompdaemon -savecompiled EulerProblem001.scala
    scala -nocompdaemon -savecompiled EulerProblem002.scala





[Doclit]: https://github.com/zoopdoop/dotlit
[NodeJS]: http://nodejs.org
[Docker]: http://http://www.docker.io
[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
