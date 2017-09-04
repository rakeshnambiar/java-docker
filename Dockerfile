FROM java:openjdk-8

RUN apt-get update

RUN apt-get install -y maven

WORKDIR /usr/tools/java/wicket-demo/

ADD pom.xml /usr/tools/java/wicket-demo/pom.xml
ADD src /usr/tools/java/wicket-demo/src
RUN ["mvn", "install"]

EXPOSE 7070
CMD ["java", "-jar", "target/wicket-demo.jar"]

