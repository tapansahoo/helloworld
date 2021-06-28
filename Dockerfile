FROM openjdk:11

COPY  /var/jenkins_home/workspace/helloWorld/target/helloWorld-*.jar /helloWorld.jar

EXPOSE 3333

CMD ["java","-Dserver.port=${PORT}","-jar","/helloWorld.jar"]
