#!/bin/bash

su -s /bin/bash hdfs -c "hadoop fs -chmod 777 /"
su -s /bin/bash hdfs -c "hadoop fs -mkdir /tmp"
su -s /bin/bash hdfs -c "hadoop fs -chmod -R 1777 /tmp"
su -s /bin/bash hdfs -c "hadoop fs -mkdir /tmp/mapred/system"
su -s /bin/bash hdfs -c "hadoop fs -chown mapred:hadoop /tmp/mapred/system"
su -s /bin/bash hdfs -c "hadoop fs -lsr /"
