FROM openjdk:16-jdk-oracle

COPY ./target/spring-boot-kube-config-poc-0.0.1-SNAPSHOT.jar /app/spring-boot-kube-config-poc-0.0.1-SNAPSHOT.jar

WORKDIR /app

EXPOSE 80

#ENV PATH $PATH:/usr/java/default/bin

RUN echo $JAVA_HOME

#RUN javac Main.java

#ENTRYPOINT  ["java" "Main"]

#CMD exec java -jar -Dspring.active.profile=prod-region1 spring-boot-kube-config-poc-0.0.1-SNAPSHOT.jar

#ENTRYPOINT exec java $JAVA_POTS -javaagent:/nerelic.jar -jar spring-boot-kube-config-poc-0.0.1-SNAPSHOT.jar --spring.config.location=/src/main/resources/

ENTRYPOINT exec java \
$JAVA_POTS \
-jar spring-boot-kube-config-poc-0.0.1-SNAPSHOT.jar --spring.config.location=/app/config/