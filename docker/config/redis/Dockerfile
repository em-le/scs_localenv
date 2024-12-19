FROM redis:7.4-alpine
COPY ./docker/config/redis/redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]