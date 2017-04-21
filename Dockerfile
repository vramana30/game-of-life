FROM gopi417/tomcatcent6
RUN source .bash_profile
RUN rm -rf /home/apache-tomcat-7.0.77/webapps/*

COPY gameoflife-web/target/gameoflife.war /home/apache-tomcat-7.0.77/webapps/ROOT.war

EXPOSE 8080
CMD ["/home/apache-tomcat-7.0.77/bin/catalina.sh", "run"]
