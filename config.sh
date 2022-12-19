#! /bin/bash

# create a script to replace all words "http://localhost" with "http://satcom-server.com" in all files named docker-compose.yml in the current directory and all subdirectories^
find . -name "docker-compose.yml" -exec sed -i 's/http:\/\/localhost/http:\/\/satcom-server.com/g' {} \;