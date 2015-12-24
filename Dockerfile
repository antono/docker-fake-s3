FROM debian:jessie
MAINTAINER Antono Vasiljev <antono.vasiljev@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -yqq ruby rubygems-integration \
	&& gem install fakes3 -v 0.2.2 \
	&& mkdir -p /s3

ENTRYPOINT ["/usr/local/bin/fakes3"]
CMD ["-r",  "/s3", "-p",  "4569"]
EXPOSE 4569
