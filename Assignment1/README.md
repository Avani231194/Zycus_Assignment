  - Dockerfile (CentOS 6) to install the following in a Docker continer:
  - Python 2.7
  - MongoDB - any version
  - Apache tomcat 7 - running on port 8080
  - run the Dockerfile such that once the container boots, apache tomcat's home page is accessible from the host on port 7080.

##Note: Make sure that you have docker installed on your machine

Run Dockerfile on to your machine where you have docker installed.

#this command will build the image with name of centos-tomcat7/avani

- RUN : docker build -t centos-tomcat7/avani  

After the image is built , run the container

- RUN : docker run -itd -p 7080:8080 centos-tomcat7/avani

Once we run these commands we can access tomcat7's home by going to ip:7000

Also, we can execute the container and check the version of mongodb and python

- RUN : docker exec -it ID_OF_DOCKERCONTAINER /bin/bash

To check version :

-   mongod --version

-   python2.7 --version




