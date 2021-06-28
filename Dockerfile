FROM openjdk:11

COPY  target/helloWorld-*.jar /helloWorld.jar

EXPOSE 3333

CMD ["java","-Dserver.port=${PORT}","-jar","/helloWorld.jar"]
