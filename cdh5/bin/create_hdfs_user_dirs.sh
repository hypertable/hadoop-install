#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: create_hdfs_user_dirs.sh <users>"
    exit 0
fi

su -s /bin/bash hdfs -c "hadoop fs -mkdir -p /user"
su -s /bin/bash hdfs -c "hadoop fs -chmod 777 /user"

while [ $# -gt 0 ] ; do
  su -s /bin/bash hdfs -c "hadoop fs -mkdir /user/$1"
  su -s /bin/bash hdfs -c "hadoop fs -chown $1 /user/$1"
  shift
done
