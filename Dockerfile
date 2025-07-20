FROM postgres:15 
ENV POSTGRES_USER=raya_admin 
ENV POSTGRES_PASSWORD=R@y@_Umniah123
ENV POSTGRES_DB=rayadb
EXPOSE 5432 
COPY mydatabase.sql /docker-entrypoint-initdb.d/

