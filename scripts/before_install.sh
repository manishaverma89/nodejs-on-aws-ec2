#!/bin/bash

#Download node and npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

#create out working directory if it doesn't exist

DIR= "/home/ec2-user/nodejs-app"
if [-d "$DIR"]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi


