FROM node:6.9.4
MAINTAINER jayro salgado

RUN echo "building API from production"

ENV WORKDIR=/usr/src/app/

WORKDIR $WORKDIR

RUN git clone -b master https://github.com/jrsalgado/api-demo.git . && \
    npm install

EXPOSE 3100

CMD ["npm", "start"]