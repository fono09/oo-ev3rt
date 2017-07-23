FROM pizzafactory/che-stack-ev3rt
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y install wget && \
    apt-get -y autoremove && apt-get -y autoclean

COPY ${PWD}/entrypoint.sh /entrypoint.sh 
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
