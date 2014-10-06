#!/bin/sh

#
# Directories Script
#
# 1. To use this script, you must edit the TODO variables below for your environment.
#
# 2. Warning: Leave the other parameters as the default values. Changing these default values will require you to
#    change values in other configuration files.
#

#
# Hadoop Service - HDFS
#

# Space separated list of directories where NameNode will store file system image. For example, /grid/hadoop/hdfs/nn /grid1/hadoop/hdfs/nn
export DFS_NAME_DIR="/data/1/hadoop/dfs/nn /data/2/hadoop/dfs/nn /data/3/hadoop/dfs/nn /data/4/hadoop/dfs/nn";

# Space separated list of directories where DataNodes will store the blocks. For example, /grid/hadoop/hdfs/dn /grid1/hadoop/hdfs/dn /grid2/hadoop/hdfs/dn
export DFS_DATA_DIR="/data/1/hadoop/dfs/dn /data/2/hadoop/dfs/dn /data/3/hadoop/dfs/dn /data/4/hadoop/dfs/dn";

# Space separated list of directories where SecondaryNameNode will store checkpoint image. For example, /grid/hadoop/hdfs/snn /grid1/hadoop/hdfs/snn /grid2/hadoop/hdfs/snn
export FS_CHECKPOINT_DIR="/data/1/hadoop/dfs/snn /data/2/hadoop/dfs/snn /data/3/hadoop/dfs/snn /data/4/hadoop/dfs/snn";



# Directory to store the HDFS logs.
export HDFS_LOG_DIR="/var/log/hadoop/hdfs";

# Directory to store the HDFS process ID.
export HDFS_PID_DIR="/var/run/hadoop/hdfs";

# Directory to store the Hadoop configuration files.
export HADOOP_CONF_DIR="/etc/hadoop/conf";

#
# Hadoop Service - YARN 
#

# Space separated list of directories where YARN will store temporary data. For example, /grid/hadoop/yarn/local /grid1/hadoop/yarn/local /grid2/hadoop/yarn/local
export YARN_LOCAL_DIR="/data/1/hadoop/yarn/local /data/2/hadoop/yarn/local /data/3/hadoop/yarn/local /data/4/hadoop/yarn/local";

# Directory to store the YARN logs.
export YARN_LOG_DIR="/var/log/hadoop/yarn"; 

# Space separated list of directories where YARN will store container log data. For example, /grid/hadoop/yarn/logs /grid1/hadoop/yarn/logs /grid2/hadoop/yarn/logs
export YARN_LOCAL_LOG_DIR="/data/1/hadoop/yarn/logs /data/2/hadoop/yarn/logs /data/3/hadoop/yarn/logs /data/4/hadoop/yarn/logs";

# Directory to store the YARN process ID.
export YARN_PID_DIR="/var/run/hadoop/yarn";

#
# Hadoop Service - MAPREDUCE
#

# Directory to store the MapReduce daemon logs.
export MAPRED_LOG_DIR="/var/log/hadoop/mapred";

# Directory to store the mapreduce jobhistory process ID.
export MAPRED_PID_DIR="/var/run/hadoop/mapred";

#
# Hadoop Service - Hive
#

# Directory to store the Hive configuration files.
export HIVE_CONF_DIR="/etc/hive/conf";

# Directory to store the Hive logs.
export HIVE_LOG_DIR="/var/log/hive";

# Directory to store the Hive process ID.
export HIVE_PID_DIR="/var/run/hive";

#
# Hadoop Service - WebHCat (Templeton)
#

# Directory to store the WebHCat (Templeton) configuration files.
export WEBHCAT_CONF_DIR="/etc/hcatalog/conf/webhcat";

# Directory to store the WebHCat (Templeton) logs.
export WEBHCAT_LOG_DIR="var/log/webhcat";

# Directory to store the WebHCat (Templeton) process ID.
export WEBHCAT_PID_DIR="/var/run/webhcat";

#
# Hadoop Service - HBase
#

# Directory to store the HBase configuration files.
export HBASE_CONF_DIR="/etc/hbase/conf";

# Directory to store the HBase logs.
export HBASE_LOG_DIR="/var/log/hbase";

# Directory to store the HBase logs.
export HBASE_PID_DIR="/var/run/hbase";

#
# Hadoop Service - ZooKeeper
#

# Directory where ZooKeeper will store data. For example, /grid1/hadoop/zookeeper/data
export ZOOKEEPER_DATA_DIR="/data/1/hadoop/zookeper/data";

# Directory to store the ZooKeeper configuration files.
export ZOOKEEPER_CONF_DIR="/etc/zookeeper/conf";

# Directory to store the ZooKeeper logs.
export ZOOKEEPER_LOG_DIR="/var/log/zookeeper";

# Directory to store the ZooKeeper process ID.
export ZOOKEEPER_PID_DIR="/var/run/zookeeper";

#
# Hadoop Service - Pig
#

# Directory to store the Pig configuration files.
export PIG_CONF_DIR="/etc/pig/conf";

# Directory to store the Pig logs.
export PIG_LOG_DIR="/var/log/pig";

# Directory to store the Pig process ID.
export PIG_PID_DIR="/var/run/pig";


#
# Hadoop Service - Oozie
#

# Directory to store the Oozie configuration files.
export OOZIE_CONF_DIR="/etc/oozie/conf"

# Directory to store the Oozie data.
export OOZIE_DATA="/var/db/oozie"

# Directory to store the Oozie logs.
export OOZIE_LOG_DIR="/var/log/oozie"

# Directory to store the Oozie process ID.
export OOZIE_PID_DIR="/var/run/oozie"

# Directory to store the Oozie temporary files.
export OOZIE_TMP_DIR="/var/tmp/oozie"

#
# Hadoop Service - Sqoop
#
export SQOOP_CONF_DIR="/etc/sqoop/conf"

export HADOOP_LIBEXEC_DIR=/usr/lib/hadoop/libexec

export HADOOP_PREFIX=/usr/lib/hadoop
export HADOOP_HDFS_HOME=/usr/lib/hadoop-hdfs

#   HADOOP_LOG_DIR   Where log files are stored.  PWD by default.
#   HADOOP_PID_DIR   The pid files are stored. /tmp by default.

