FROM

ADD . /project/eureka-server

WORKDIR  /project/eureka-server

RUN mvn clean package -Dmaven.test.skip=true

COPY /project/eureka-server/target/eureka-server.jar  /usr/src/myapp/eureka-server.jar

WORKDIR  /usr/src/myapp

EXPOSE 8888

ENTRYPOINT java -jar eureka-server.jar
