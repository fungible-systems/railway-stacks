FROM wileyj/stacks-blockchain-api:railway-new
ARG PGHOST=postgres
ARG PGPORT=5432 
ARG PGUSER=postgres
ARG PGPASSWORD=postgres
ARG PGDATABASE=postgres
ARG STACKS_NETWORK=mocknet
ARG STACKS_BLOCKCHAIN_API_PORT=443

ENV PG_HOST=${PGHOST}
ENV PG_PORT=${PGPORT} 
ENV PG_USER=${PGUSER}
ENV PG_PASSWORD=${PGPASSWORD}
ENV PG_DATABASE=${PGDATABASE}
ENV STACKS_NETWORK=${STACKS_NETWORK}
ENV STACKS_BLOCKCHAIN_API_PORT=443


EXPOSE ${STACKS_BLOCKCHAIN_API_PORT}
EXPOSE 20443
EXPOSE 20444
CMD ["/entrypoint.sh"]
