FROM nginx

LABEL maintainer="Michael Kelner <mikhail.kelner@gmail.com>"

RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/charger88/zebra-client.git
WORKDIR /zebra-client
RUN (git pull && git checkout tags/1.0.1)

ADD default.conf /etc/nginx/conf.d/default.conf
ADD cmd.sh /

EXPOSE 443

CMD ["/bin/bash", "/cmd.sh"]
