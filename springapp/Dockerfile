# Start with a base image containing Java runtime
FROM maven
COPY ./ /opt/app
EXPOSE 8080
WORKDIR /opt/app
ENTRYPOINT ["mvn","spring-boot:run"]
