#!/bin/bash

su -s /bin/bash hdfs -c "yes Y | hadoop namenode -format"
