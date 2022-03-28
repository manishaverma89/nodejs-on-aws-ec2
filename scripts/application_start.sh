#!/bin/bash

#navigate into our working directory where we have all our github files
cd /home/ec2-user/nodejs-app

#adding npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#install node modules
npm install express

#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &
