#! /bin/bash

# create a script to replace all words "http://localhost" with "http://satcom-server.com" in all files named docker-compose.yml in the current directory and all subdirectories^
find . -name "docker-compose.yml" -exec sed -i 's/http:\/\/localhost/http:\/\/satcom-server.com/g' {} \;
# same with Dockerfile.base files
find . -name "Dockerfile.base" -exec sed -i 's/http:\/\/localhost/http:\/\/satcom-server.com/g' {} \;
find . -name "Dockerfile" -exec sed -i 's/http:\/\/localhost/http:\/\/satcom-server.com/g' {} \;
# same with .env files
find . -name "setup.ts" -exec sed -i 's/http:\/\/localhost/http:\/\/satcom-server.com/g' {} \;
# give all files where the string "http://localhost" is inside^
grep -r "http://localhost" .