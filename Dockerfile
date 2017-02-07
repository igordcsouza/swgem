FROM ruby:2.4
WORKDIR /app
RUN gem install bundler
ADD . /app
RUN bundle install
