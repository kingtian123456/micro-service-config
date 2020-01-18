#!/bin/bash
pid=`ps -ef|grep tomcat|grep -v grep|awk '{print $2}'`
date=$(date +'%Y-%m-%d %H:%M:%S')
ds=$(date +'%Y%m%d')
if [ -z "${pid}" ];then
  cd /home/apache-tomcat-8.5.31/bin
  sh startup.sh
  echo “$date 程序启动成功 \n” >>/home/tomcat/"$ds"monitor.log
else
  echo "$date 运行程序监控 \n" >>/home/tomcat/"$ds"monitor.log
fi
