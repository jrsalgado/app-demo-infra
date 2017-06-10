FROM node:6.9.4
MAINTAINER jayro salgado

RUN echo "building WEB from production"

ENV WORKDIR=/usr/src/app
ENV TEMPDIR=/usr/src/temp

ARG REACT_APP_API_URL
ENV REACT_APP_API_URL=$REACT_APP_API_URL

RUN npm install -g create-react-app && \
    npm install -g serve && \
    mkdir $WORKDIR && \
    mkdir $TEMPDIR

WORKDIR $TEMPDIR
RUN git clone -b master https://github.com/jrsalgado/web-app-demo.git $TEMPDIR && \
    npm install && \
    npm run build && \
    npm uninstall -g create-react-app && \
    mv -v $TEMPDIR/build $WORKDIR/build && \
    rm -rf $TEMPDIR

WORKDIR $WORKDIR

EXPOSE 5000
CMD ["serve", "-s", "build"]