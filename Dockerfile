FROM php:7.2-cli
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /usr/src/app

COPY . .
RUN /bin/bash -c "source .env"
EXPOSE 80

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=80"]
