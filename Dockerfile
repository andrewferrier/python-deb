FROM ubuntu:15.10
MAINTAINER Andrew Ferrier <andrew.ferrier@example.com>
RUN apt-get update
RUN apt-get install --no-install-recommends -y \
        build-essential \
        checkinstall \
        debhelper \
        fakeroot \
        python-all \
        python3-all \
        python3-pip \
        vim-tiny
WORKDIR /tmp
RUN pip3 install stdeb
RUN pypi-install --keep coloredlogs
RUN pypi-install --keep humanfriendly
RUN fakeroot checkinstall --pkgname=python3-pdfminer3k --pkgversion=0.1 -y --fstrans=no --install=no pip3 install pdfminer3k
RUN find tmp*/ | grep deb$ | xargs cp -t /tmp
