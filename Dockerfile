FROM simplecasual/ruby:2.4.1

RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk --update --upgrade add --no-cache \
        tzdata \
        nodejs \
        postgresql \
        postgresql-dev \
        postgresql-client \
        curl \
        curl-dev \
        wkhtmltopdf@testing \
        imagemagick \
        ghostscript \
        file && \
        rm /var/cache/apk/*

CMD ["irb"]
