FROM ruby:2.7.1-alpine3.11

RUN apk --no-cache add make gcc libc-dev \
    rm -rf /var/cache/apk/*


WORKDIR /app

ADD Gemfile* ./
RUN bundle install

ADD . /app

CMD rake
