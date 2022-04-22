FROM tomcat
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
ARG war_FILE=/var/lib/jenkins/workspace/spring-boot/webapp/target/*.war
COPY ${war_FILE} /usr/local/tomcat/webapps
