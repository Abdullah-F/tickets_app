FROM ruby:2.6.6-alpine

RUN apk update && apk add --no-cache nodejs \
    libxml2 libxml2-dev libxml2-utils \
    libxslt libxslt-dev zlib-dev zlib \
    libffi-dev build-base \
    make gcc g++ tzdata git\
    sqlite sqlite-dev bash

WORKDIR /usr/src/tickets_app

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .
