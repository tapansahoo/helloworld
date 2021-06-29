FROM openjdk:11

COPY  target/helloworld-1.0-SNAPSHOT.jar /helloWorld.jar

EXPOSE 3333

CMD ["java","-Dserver.port=${PORT}","-jar","/helloWorld.jar"]
