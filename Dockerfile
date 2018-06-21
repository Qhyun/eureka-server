FROM

LABEL description = "this is eureka server"

COPY /app/target/eureka-server.jar /service/
RUN mkdir -p /service/logs/
RUN echo $(ls /service/)
WORKDIR /service
EXPOSE 8888
ENTRYPOINT  java -jar /service/eureka-server.jar