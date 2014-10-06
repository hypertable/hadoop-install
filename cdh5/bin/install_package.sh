#!/bin/bash

BASE_DIR=`dirname $0`/..

cp $BASE_DIR/cdh5.repo /etc/yum.repos.d/
yum -y clean all
