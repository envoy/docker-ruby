FROM ruby:2.4.1-alpine

RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk --update --upgrade add --no-cache \
        libstdc++ \
        tzdata \
        bash \
        git \
        nodejs \
        build-base \
        linux-headers \
        ruby-dev \
        libc-dev \
        openssl-dev \
        postgresql-dev \
        postgresql-client \
        curl \
        curl-dev \
        libxml2-dev \
        libxslt-dev \
        wkhtmltopdf@testing \
        ca-certificates \
        imagemagick \
        ghostscript \
        file \
        tar \
        gzip && \
        rm /var/cache/apk/*

CMD ["irb"]
