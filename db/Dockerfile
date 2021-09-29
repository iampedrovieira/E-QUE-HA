FROM postgres
ENV POSTGRES_PASSWORD docker
ENV POSTGRES_DB tp2SIRbd
WORKDIR /db
#Create db schema
COPY b-2021.sql /docker-entrypoint-initdb.d/
EXPOSE 5432