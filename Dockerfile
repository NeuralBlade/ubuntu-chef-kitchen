FROM ubuntu:16.04

ARG VERSION=14.14.29

RUN 	apt-get update && \
	apt-get install -y sudo wget cpio openssh-server curl lsb-release

RUN wget "https://packages.chef.io/files/stable/chef/${VERSION}/ubuntu/16.04/chef_${VERSION}-1_amd64.deb" -O /tmp/chef-client.deb && \
    dpkg -i  /tmp/chef-client.deb    && \
    rm -rf /tmp/chef-client.deb
