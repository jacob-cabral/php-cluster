FROM redis

COPY redis.conf /usr/local/etc/redis/redis.conf

ENV REQUIREPASS umasenhamuitocomplexa

RUN echo "\nrequirepass ${REQUIREPASS}" >> /usr/local/etc/redis/redis.conf

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]