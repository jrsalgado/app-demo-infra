FROM node:6.9.4
MAINTAINER jayro salgado

RUN echo "building WEB from production"

ENV WORKDIR=/usr/src/app
ENV TEMPDIR=/usr/src/temp

RUN npm install -g create-react-app && \
    npm install -g serve && \
    mkdir $WORKDIR && \
    mkdir $TEMPDIR

WORKDIR $TEMPDIR
RUN git clone -b develop https://github.com/jrsalgado/web-app-demo.git $TEMPDIR && \
    npm install && \
    npm run build && \
    npm uninstall -g create-react-ap && \
    mv -v $TEMPDIR/build $WORKDIR/build && \
    rm -rf $TEMPDIR

WORKDIR $WORKDIR

EXPOSE 5000
CMD ["serve", "-s", "build"]