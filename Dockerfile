FROM ruby:alpine
MAINTAINER Nayan Mevada <nayanmevada@ymail.com>

RUN apk add --update build-base postgresql-dev tzdata
RUN gem install rails -v '5.1.6'
RUN gem install cassandra-web

WORKDIR /app
#cassandra-web --hosts '10.0.2.2' --port '9042' --username 'cassweb' --password 'myPassword'
CMD ['cassandra-web]