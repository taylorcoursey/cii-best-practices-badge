FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential cmake

# for postgres
RUN apt-get install -y libpq-dev

# for a JS runtime
RUN apt-get install -y nodejs

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
RUN bundle install
CMD ["bash"]