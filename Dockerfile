FROM php:apache

RUN a2enmod rewrite
RUN docker-php-ext-install pdo_mysql > /dev/null

COPY . /app
RUN chown -R www-data:www-data /app/var
RUN rm -rf /var/www/html && ln -s /app/web /var/www/html
