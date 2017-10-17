FROM tomcat:9

MAINTAINER github.com/PengBAI

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

ADD webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080 2222
CMD ["catalina.sh", "run"]

