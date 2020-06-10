FROM java:8

VOLUME /tmp

ADD /target/microservice-buyer-0.0.1-SNAPSHOT.jar microservice-buyer-0.0.1-SNAPSHOT.jar
RUN bash -c 'touch /microservice-buyer-0.0.1-SNAPSHOT.jar'

EXPOSE 8082

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/microservice-buyer-0.0.1-SNAPSHOT.jar"]