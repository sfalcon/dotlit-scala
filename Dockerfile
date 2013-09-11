# DOCKER-VERSION 0.6.1


################################################################################
#
# Base Ubuntu 12.10 installation
#
################################################################################

FROM    ubuntu:12.10

RUN     apt-get update
RUN     apt-get install -y curl git



################################################################################
#
# Scala
#
# Uses OpenJDK 6 as OpenJDK 7 is difficult to install in the Docker Ubuntu
# container. Scala version 2.9.2 for demonstration purposes.
#
################################################################################

RUN     apt-get install -y openjdk-6-jdk
RUN     apt-get install -y scala



################################################################################
#
# Node.js
#
################################################################################

RUN     curl https://raw.github.com/creationix/nvm/master/install.sh | HOME=/root sh
RUN     echo '[[ -s /root/.nvm/nvm.sh ]] && . /root/.nvm/nvm.sh' > /etc/profile.d/nvm.sh
RUN     echo 'nvm install 0.11' | bash -l
RUN     echo 'nvm alias default 0.11' | bash -l



################################################################################
#
# Grunt
#
################################################################################

RUN     echo 'nvm use 0.11 && npm install -g grunt-cli' | bash -l



################################################################################
#
# Markdown
#
################################################################################

RUN     apt-get install -y pandoc



################################################################################
#
# Application settings
#
# Add the repository root directory at /dotlit on the container for now. Host
# changes will not be reflected on the guest. An upcoming change in Docker will
# allow us to start docker with host-to-guest filesystem sharing.
#
#    sudo docker run -b .:/dotlit/ -w=/dotlit/ frontend /bin/bash -l
#
################################################################################

#RUN     mkdir /dotlit
ADD     . /dotlit
