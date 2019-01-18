#!/bin/bash

alias _run="scripts/run.sh $1"
alias _build="./mvnw package && chmod +x target/suchapp-0.0.1-SNAPSHOT.jar && docker build . -t kuperiu/suchapp"
alias _deploy="scripts/deploy.sh $1"