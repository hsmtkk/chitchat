FROM postgres:12.2

ENV POSTGRES_DB=chitchat \
 POSTGRES_HOST_AUTH_METHOD=trust

COPY ./docker/database/init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh

EXPOSE 5432

