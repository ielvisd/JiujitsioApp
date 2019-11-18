FROM ruby:2.5

ARG UID
RUN adduser rails --uid $UID --disabled-password --gecos ""

ENV APP /usr/src/app
RUN mkdir $APP
WORKDIR $APP

COPY Gemfile* $APP/
RUN bundle install -j3 --path vendor/bundle

COPY . $APP/

# Setting env up
ENV RAILS_ENV='development'
ENV RACK_ENV='development'

CMD ["bundle", "exec", "rails", "server", "-p", "8080", "-b", "0.0.0.0"]