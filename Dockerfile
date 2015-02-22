FROM ubuntu:14.04
MAINTAINER Joshua Jacobs <josh@mandala-designs.com>

# make sure the package repository is up to date
RUN apt-get -y update

# install python-software-properties (so you can do add-apt-repository)
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-software-properties software-properties-common

# add brightbox's repo, for ruby2.2
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get -y update

# install ruby2.2
RUN apt-get -y install ruby2.2 ruby2.2-dev bundler javascript-common
