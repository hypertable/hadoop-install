#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: configure_master.sh <source_machine>"
    exit 0
fi

DISTRO=cdh5
BASE_DIR=`dirname $0`/..
SOURCE_MACHINE=$1

alternatives --remove hadoop-conf /etc/hadoop/conf.${SOURCE_MACHINE}
rm -rf /etc/hadoop/conf.${SOURCE_MACHINE}
rsync -e "ssh -o StrictHostKeyChecking=no" -av ${SOURCE_MACHINE}:/tmp/hadoop-install/${DISTRO}/conf.${SOURCE_MACHINE} /etc/hadoop/
alternatives --verbose --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.${SOURCE_MACHINE} 50
alternatives --set hadoop-conf /etc/hadoop/conf.${SOURCE_MACHINE}
alternatives --display hadoop-conf
