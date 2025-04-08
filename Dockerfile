FROM ubuntu:24.10

EXPOSE 8000



WORKDIR /app

ENV HOST=localhost DBPORT=5432

ENV USER=root PASSWORD=root DBNAME=root

COPY ./api-go-gin api-go-gin

RUN chmod +x api-go-gin

COPY ./templates/ templates/

CMD [ "./api-go-gin" ]
