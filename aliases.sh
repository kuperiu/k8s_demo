#!/bin/bash

alias _run="./parse.py && source /tmp/.bashrc %% rm -rf /tmp/.bashrc && ./mvnw spring-boot:run"
alias _build="./mvnw package && chmod +x target/suchapp-0.0.1-SNAPSHOT.jar && docker build . -t kuperiu/suchapp"
alias _deploy="kubectl delete -f kube/ && kubectl apply -f kube/"