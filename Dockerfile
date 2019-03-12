FROM openjdk:11.0.2-jdk

WORKDIR /data/
ADD ./scripts/start.sh /start.sh

RUN chmod +x /start.sh

VOLUME /data

EXPOSE 25565

CMD    ["/start.sh"]