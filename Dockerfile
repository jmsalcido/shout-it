# Dockerfile

FROM ruby:2.7.2

WORKDIR /shoutit
COPY . /shoutit
RUN bundle install

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
