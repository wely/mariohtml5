FROM tomcat:9

MAINTAINER github.com/PengBAI

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

ADD webapp/ /usr/local/tomcat/webapps/ROOT/


RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo "root:Docker!" | chpasswd

COPY sshd_config /etc/ssh/

EXPOSE 8080 2222

COPY init.sh /bin/init.sh
RUN chmod 755 /bin/init.sh


#CMD ["catalina.sh", "run"]

ENTRYPOINT ["/bin/init.sh"]