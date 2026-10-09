FROM maven:3.9-eclipse-temurin-25 AS build
WORKDIR /usr/src/harness
COPY pom.xml .
RUN mvn -B -q -ntp dependency:go-offline
COPY src src
RUN mvn -B -q -ntp package

FROM eclipse-temurin:25-jre
COPY --from=build /usr/src/harness/target/*.jar /harness/
COPY --from=build /usr/src/harness/target/lib/ /harness/lib/
CMD ["java", "-cp", "/harness/*:/harness/lib/*", "io.github.corvusdotnet.jsonschema.BowtieHarness"]
