
FROM php:apache

# Aktifkan ekstensi mysqli
RUN docker-php-ext-install mysqli

# Install Composer
# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

# Install Composer Dependencies
#RUN composer install

# Aktifkan mod_rewrite
RUN a2enmod rewrite

# Copy file config
COPY ./apache-config.conf /etc/apache2/sites-available/000-default.conf

# Set working directory
WORKDIR /var/www/html



# NOTE : (Important)
# install manual composer dependencys ketika container suidah dibuat. arahkan dimana file composer.json berada