#!/bin/bash

for service in /etc/init.d/hadoop-hdfs-*; do
  $service start;
done

