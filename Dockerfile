# Use an existing Tomcat image as the base image
FROM tomcat:9.0.39-jdk14

# Set the working directory to the Tomcat webapps folder
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file from the host machine to the container
COPY target/WebApp.war .

# Start the Tomcat server
CMD ["catalina.sh", "run"]
