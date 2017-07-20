FROM pizzafactory/che-stack-ev3rt:latest

RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa && \
    apt update && \
    apt install -y gcc-arm-embedded

COPY ./entrypoint.sh /entrypoint.sh 

RUN chmod +x /entrypoint.sh

WORKDIR /projects

ENTRYPOINT ["/entrypoint.sh"]
