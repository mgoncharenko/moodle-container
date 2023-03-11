# FROM moodlehq/moodle-php-apache:8.2

FROM moodlehq/moodle-php-apache:7.4

WORKDIR /var/www/html

RUN apt-get update && \
    apt-get install -y curl

RUN mkdir -p /var/www/html && \
    mkdir -p /var/www/moodledata && \
    chown -R www-data /var/www/moodledata && \
    curl --output /tmp/moodle.zip https://download.moodle.org/download.php/direct/stable401/moodle-4.1.1.zip && \
    unzip -q /tmp/moodle.zip && \
    mv ./moodle/* ./ && \
    rm -f /tmp/moodle.zip

# COPY p.php /var/www/html

COPY php.ini /usr/local/etc/php/conf.d/docker-php-moodle-overrides.ini

COPY run.sh /

RUN chmod ugo+x /run.sh

USER www-data

CMD /run.sh
