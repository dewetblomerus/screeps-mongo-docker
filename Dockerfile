FROM node:8.11.1-stretch
RUN yarn global add screeps
WORKDIR /screeps
RUN yarn add screepsmod-mongo screepsmod-auth screepsmod-tickrate screepsmod-admin-utils screepsmod-features

MAINTAINER De Wet Blomerus


COPY docker-entrypoint.sh /usr/local/bin/

WORKDIR /screeps

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["screeps", "start"]
