FROM php:8.2-cli

# mysqli kengaytmasini o'rnatish uchun
RUN docker-php-ext-install mysqli

WORKDIR /app
COPY . .

CMD sh -c "php -S 0.0.0.0:${PORT:-8080} -t ."
