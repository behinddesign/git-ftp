FROM debian:stable-slim
MAINTAINER Graham Davies <graham@behinddesign.co.uk>

ENV DEBIAN_FRONTEND noninteractive

# install git
RUN apt-get -y update && apt-get -y install git git-ftp

# slim down image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

# run a cmd to show version number
CMD git --version