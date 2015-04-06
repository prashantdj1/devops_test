#!/bin/bash


sudo -i; cd /opt/; mv spring-petclinic spring-petclinic_`date +"%m-%d-%y"`; git clone https://github.com/SpringSource/spring-petclinic.git; sleep 1; ps aux |grep tomcat7:run |cut -d" " -f6 |head -1 > pid.txt && kill `cat pid.txt`; cd spring-petclinic/ && mvn tomcat7:run &
