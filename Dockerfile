FROM ruby:3.2.6 AS rails-toolbox

WORKDIR /app

ENV SPINACMSTEST_DATABASE_HOST=
ENV SPINACMSTEST_DATABASE_PORT=
ENV SPINACMSTEST_DATABASE_USER=
ENV SPINACMSTEST_DATABASE_PASSWORD=

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    nodejs \
    postgresql-client && \
    rm -rf /var/lib/apt/lists/*

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && \
    bundle install --jobs 4

COPY scripts/start-spina.sh ./
COPY . .

EXPOSE 3000
CMD [ "/bin/sh", "-c", "scripts/start-spina.sh" ]