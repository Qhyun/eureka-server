FROM ubuntu
  
ADD pom.xml /tmp/build/  
  
ADD src /tmp/build/src  

WORKDIR  /tmp/build

RUN mvn clean package

EXPOSE 8888  
ENTRYPOINT ["java","-jar","target/eureka-server.jar"]
