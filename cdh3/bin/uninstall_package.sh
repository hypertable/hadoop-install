#!/bin/bash

yum -y remove hadoop-0.20 hadoop-0.20-native

rm -f /etc/yum.repos.d/cdh3.repo
