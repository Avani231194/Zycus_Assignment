#using centos:6:6 base image
FROM centos:6.6
MAINTAINER Avani Singhal

#Installing some tools to support the application including mongodb-server and epel Repo
RUN yum -y update
RUN yum -y install wget tar epel-release centos-release-SCL
RUN yum -y install mongodb-server wget tar python27

#Installing python2.7 in centos
RUN yum install -y gcc && \
    cd /usr/src && \
    wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz && \
    tar xzf Python-2.7.13.tgz && \
    cd Python-2.7.13 && \
    ./configure && \
    make altinstall


#Installing java using yum
RUN yum install -y java-1.7.0

# Download Apache Tomcat 7
RUN cd /tmp;wget http://mirror.nexcess.net/apache/tomcat/tomcat-7/v7.0.79/bin/apache-tomcat-7.0.79.tar.gz

#using TAR to untar the tomcat package
RUN cd /tmp;tar xzvf apache-tomcat-7.0.79.tar.gz
RUN cd /tmp;mv apache-tomcat-7.0.79 /opt/tomcat7
RUN chmod -R 755 /opt/tomcat7

#change into the working directory from where the tomcat server will be started
WORKDIR /opt/tomcat7/bin/

#Opening a port on which container wil be exposed
EXPOSE 8080

#Script which will started to start tomcat while starting the container
CMD ["./catalina.sh", "run"]
