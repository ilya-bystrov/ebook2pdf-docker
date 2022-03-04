FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install calibre

RUN mkdir /opt/work
WORKDIR /opt/work

ENTRYPOINT ["ebook-convert"]

#modeline vim: set fdm=marker foldmarker=<!--,--> commentstring=\ #%s:
