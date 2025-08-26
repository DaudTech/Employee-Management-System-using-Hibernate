# Stage 1: Build with Maven
FROM maven:3.9.9-eclipse-temurin-8 AS build

WORKDIR /app

# Copy pom.xml first and download dependencies (better caching)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Now copy source code
COPY src ./src

# Build WAR without running tests
RUN mvn clean package -DskipTests

# Stage 2: Run with Tomcat
FROM tomcat:9.0-jdk8-temurin

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy generated WAR
COPY --from=build /app/target/emloyee-management-jsp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]