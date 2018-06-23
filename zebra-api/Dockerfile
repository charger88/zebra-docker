FROM debian:stretch-slim

LABEL maintainer="Michael Kelner <mikhail.kelner@gmail.com>"

RUN apt-get update
RUN apt-get install -y golang git

ENV GOPATH /go
RUN go get github.com/go-yaml/yaml
RUN go get github.com/mediocregopher/radix.v2/redis
RUN go get golang.org/x/crypto/bcrypt
RUN git clone https://github.com/charger88/zebra-api.git

ADD cmd.sh /

EXPOSE 8080

WORKDIR /zebra-api

CMD ["/bin/bash", "/cmd.sh"]