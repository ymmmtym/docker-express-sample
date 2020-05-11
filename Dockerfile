FROM node:lts-alpine3.11
LABEL Maintainer="ymmmtym"

ENV APP='/opt/app' \
    HOSTNAME='express' \
    PS1='[\u@\h \W]# '
COPY [".", "${APP}"]
WORKDIR ${APP}

RUN npm install

EXPOSE 3000
CMD [ "node", "./bin/www"]