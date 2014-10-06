#!/bin/bash

su -s /bin/bash hdfs -c "yes Y | env HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec /usr/lib/hadoop/bin/hadoop namenode -format"
