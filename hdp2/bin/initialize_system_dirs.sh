#!/bin/bash

SCRIPT_DIR=`dirname $0`

su -s /bin/bash hdfs -c "source $SCRIPT_DIR/hadoop_environment.sh; hdfs dfs -chmod 777 /"
