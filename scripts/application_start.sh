#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/express-app

#navigate into our working directory where we have all our github files
cd /home/ec2-user/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"	
# loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
# loads nvm bash_completion (node is in path now)	
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

#install node modules
npm install

#start our node app in the background trailing & keep the process running in the background
#/dev/null,end-of-file indication immediately if it tries to read from its standard input.
#
node app.js > app.out.log 2> app.err.log < /dev/null & 