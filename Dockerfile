FROM node:alpine3.11
LABEL Maintainer="ymmmtym"

ENV APP='/root/app' \
    HOSTNAME='express'
WORKDIR ${APP}
COPY ["./app", "${APP}"]

RUN npm install

CMD [ "node", "./bin/www"]
EXPOSE 3000