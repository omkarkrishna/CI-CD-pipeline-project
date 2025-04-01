##artifact build stage
FROM maven AS buildstage
RUN mkdir /opt/CI-CD-pipeline-project
WORKDIR /opt/CI-CD-pipeline-project
COPY . .
RUN mvn clean install    ## artifact -- .war

### tomcat deploy stage
FROM tomcat
WORKDIR webapps
COPY --from=buildstage /opt/CI-CD-pipeline-project/target/*.war .
RUN rm -rf ROOT && mv *.war ROOT.war
EXPOSE 8080
