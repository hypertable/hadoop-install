#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: configure_source.sh <source_machine>"
    exit 0
fi

DISTRO=cdh5
BASE_DIR=`dirname $0`/..
SOURCE_MACHINE=$1

# Copy configuration to temp directory
mkdir -p /tmp/hadoop-install/${DISTRO}
rm -rf /tmp/hadoop-install/${DISTRO}/conf.${SOURCE_MACHINE}
cp -r ${BASE_DIR}/conf.${SOURCE_MACHINE} /tmp/hadoop-install/${DISTRO}/

rm -rf /etc/hadoop/conf.${SOURCE_MACHINE}
cp -r ${BASE_DIR}/conf.${SOURCE_MACHINE} /etc/hadoop/
alternatives --verbose --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.${SOURCE_MACHINE} 50
alternatives --set hadoop-conf /etc/hadoop/conf.${SOURCE_MACHINE}
alternatives --display hadoop-conf

yum -y install pig
