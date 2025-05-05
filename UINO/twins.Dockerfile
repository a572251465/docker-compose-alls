FROM openjdk:8
LABEL authors="lihaohao"

ENV BASE_PATH /opt/soft
ENV LANG C.UTF-8

RUN mkdir -p ${BASE_PATH}
WORKDIR ${BASE_PATH}

COPY ./server/ ${BASE_PATH}
RUN ls ${BASE_PATH}

EXPOSE 8080

CMD /bin/bash ${BASE_PATH}/restart-twins-server.sh