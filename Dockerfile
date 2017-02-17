FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0

RUN gem install google-geocoder --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["geo"]
CMD ["--help"]
