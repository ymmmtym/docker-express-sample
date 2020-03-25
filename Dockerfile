FROM node:lts-alpine3.11
LABEL Maintainer="ymmmtym"

ENV APP='/root/app' \
    HOSTNAME='express' \
    PS1='[\u@\h \W]# '
WORKDIR ${APP}
COPY ["./app", "${APP}"]

RUN npm install

EXPOSE 3000
CMD [ "node", "./bin/www"]