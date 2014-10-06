#!/bin/bash

if [ $# -eq 0 ] ; then
    echo "usage: configure_server.sh <source_machine>"
    exit 0
fi

DISTRO=hdp2
BASE_DIR=`dirname $0`/..
SOURCE_MACHINE=$1

mkdir -p /tmp/hadoop-install/${DISTRO}
rm -rf /tmp/hadoop-install/${DISTRO}/conf.${SOURCE_MACHINE}
cp -r ${BASE_DIR}/conf.${SOURCE_MACHINE} /tmp/hadoop-install/${DISTRO}/
