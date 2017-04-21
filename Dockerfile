FROM gopi417/tomcatcent6
RUN source /root/.bash_profile
RUN export JRE_HOME=/home/jre1.8.0_131
RUN rm -rf /home/apache-tomcat-7.0.77/webapps/*

COPY gameoflife-web/target/gameoflife.war /home/apache-tomcat-7.0.77/webapps/ROOT.war

EXPOSE 8080
CMD ["/home/apache-tomcat-7.0.77/bin/catalina.sh", "run"]
