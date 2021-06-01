#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# source sh script
. ~/.nvm/nvm.sh
#install node
nvm install node

# create the working directory

DIR="/home/ec2-user/express-app"
if [ -d "$DIR"]; then
    echo "${DIR} exists"
else
    echo "Creating a one"
    mkdir ${DIR}
fi