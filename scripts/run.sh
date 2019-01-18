#!/bin/bash
scripts//parse.py $1
source /tmp/.bashrc
 rm -rf /tmp/.bashrc 
 ./mvnw spring-boot:run