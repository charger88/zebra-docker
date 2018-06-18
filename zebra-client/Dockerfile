FROM nginx

LABEL maintainer="Michael Kelner <mikhail.kelner@gmail.com>"

RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/charger88/zebra-client.git

ADD default.conf /etc/nginx/conf.d/default.conf
ADD cmd.sh /

EXPOSE 8080

WORKDIR /zebra-client
CMD ["/bin/bash", "/cmd.sh"]