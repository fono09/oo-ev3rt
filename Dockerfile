FROM ubuntu:16.04 
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:team-gcc-arm-embedded/ppa && \
    apt-get -y remove software-properties-common && \
    apt-get -y update && \
    apt-get -y install build-essential u-boot-tools libboost1.58-all-dev gcc-arm-embedded && \
    apt-get -y autoremove && apt-get -y autoclean

COPY ./entrypoint.sh /entrypoint.sh 

RUN chmod +x /entrypoint.sh

WORKDIR /projects

ENTRYPOINT ["/entrypoint.sh"]
