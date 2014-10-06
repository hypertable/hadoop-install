#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: configure_source.sh <source_machine>"
    exit 0
fi

DISTRO=cdh3
BASE_DIR=`dirname $0`/..
SOURCE_MACHINE=$1

# Copy configuration to temp directory
mkdir -p /tmp/hadoop-install/${DISTRO}
rm -rf /tmp/hadoop-install/${DISTRO}/conf.${SOURCE_MACHINE}
cp -r ${BASE_DIR}/conf.${SOURCE_MACHINE} /tmp/hadoop-install/${DISTRO}/

rm -rf /etc/hadoop-0.20/conf.${SOURCE_MACHINE}
cp -r ${BASE_DIR}/conf.${SOURCE_MACHINE} /etc/hadoop-0.20/
alternatives --verbose --install /etc/hadoop-0.20/conf hadoop-0.20-conf /etc/hadoop-0.20/conf.${SOURCE_MACHINE} 50
alternatives --set hadoop-0.20-conf /etc/hadoop-0.20/conf.${SOURCE_MACHINE}
alternatives --display hadoop-0.20-conf
