FROM gopi417/tomcatcent6

RUN rm -rf /home/apache-tomcat-7.0.77/webapps/*

COPY target/gameoflife.war /home/apache-tomcat-7.0.77/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
