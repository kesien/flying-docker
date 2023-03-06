FROM ellerbrock/alpine-bash-curl-ssl AS builder
WORKDIR /init
ARG DATABASE_USER
ARG DATABASE_PASSWORD

USER root
RUN mkdir -p /scripts
COPY ./env/PgAdmin/init-server.sh /scripts
WORKDIR /scripts
RUN chmod +x ./init-server.sh
RUN ./init-server.sh $DATABASE_USER $DATABASE_PASSWORD

FROM dpage/pgadmin4

COPY --from=builder /scripts/servers.json /pgadmin4/servers.json

CMD /usr/local/bin/python/python /pgadmin4/setup.py --load-servers servers.json --user admin