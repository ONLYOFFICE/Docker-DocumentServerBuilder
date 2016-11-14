FROM ubuntu:trusty
MAINTAINER Ascensio System SIA <support@onlyoffice.com>

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive QT_SELECT=qt5

RUN apt-get -y update && \
    apt-get install --force-yes -yq apt-transport-https locales software-properties-common curl && \
    curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    locale-gen en_US.UTF-8 && \
    apt-get -y update && \
    apt-get install --force-yes -yq \
        wget \
        build-essential \
        sed \
        dpkg-dev \
        debhelper \
        createrepo \
        dpkg-dev \
        debhelper \
        libxml2-dev \
        libcurl4-gnutls-dev \
        libglib2.0-dev \
        libgdk-pixbuf2.0-dev \
        libgtkglext1-dev \
        libatk1.0-dev \
        libcairo2-dev \
        libxss-dev \
        libgconf2-dev \
        default-jre \
        qt5-default \
        qtchooser \
        nodejs \
        p7zip-full \
        git \
        subversion \
        python-pip && \
    npm install -g npm && \
    npm install -g grunt-cli && \
    npm cache clean && \
    pip install awscli && \
    rm -rf /var/lib/apt/lists/*

ADD clean.sh /app/onlyoffice/clean.sh
ADD build.sh /app/onlyoffice/build.sh
ADD package.sh /app/onlyoffice/package.sh
ADD build_core.sh /app/onlyoffice/build_core.sh

VOLUME /var/lib/onlyoffice

CMD bash -C '/app/onlyoffice/build.sh'
