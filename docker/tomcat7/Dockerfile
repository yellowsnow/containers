FROM ubuntu:precise
MAINTAINER Mehdi EL AOUFIR < melaoufir [at] gmail {dot} com>
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install python-software-properties \
    software-properties-common && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get -y update && \
    echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections && \
    apt-get -y install oracle-java7-installer
RUN apt-get -y install tomcat7  && \
    echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/default/tomcat7 && \
    apt-get clean && \
    sed -i 's/unpackWARs="true"/unpackWARs="false"/' /etc/tomcat7/server.xml && \
    apt-get update --fix-missing
ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

EXPOSE 8080

CMD ["/root/run.sh"]
