FROM pizzafactory/che-stack-ev3rt:latest


COPY ./entrypoint.sh /entrypoint.sh 

RUN chmod +x /entrypoint.sh

WORKDIR /projects

ENTRYPOINT ["/entrypoint.sh"]
