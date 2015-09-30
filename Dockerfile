FROM centos:7
MAINTAINER emonuh

# install git
RUN yum -y install git curl-devel expat-devel gettext-devel openssl-devel zlib-devel make gcc perl-ExtUtils-MakeMaker
WORKDIR /usr/local/src
RUN git clone git://git.kernel.org/pub/scm/git/git.git
WORKDIR /usr/local/src/git
RUN make prefix=/usr/local all
RUN make prefix=/usr/local install
RUN yum -y remove git
