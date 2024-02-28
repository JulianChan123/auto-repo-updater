#!/bin/bash
echo '  _____          __          ____ ___               __                
  /  _  \  __ ___/  |_  ____ |    |   \___________ _/  |_  ___________ 
 /  /_\  \|  |  \   __\/  _ \|    |   /\____ \__  \\   __\/ __ \_  __ \
/    |    \  |  /|  | (  <_> )    |  / |  |_> > __ \|  | \  ___/|  | \/
\____|__  /____/ |__|  \____/|______/  |   __(____  /__|  \___  >__|   
        \/                             |__|       \/          \/            


'
echo -e "\n[stop nginx ]\n";
systemctl stop nginx;
echo -e "\n[nginx is now off]";
killall ngrok;
echo -e "\n[ngrok is now off]";
cd ..;
git pull;
echo -e "\n[start nginx ]\n";
systemctl start nginx;
echo -e "\n[nginx is now on]";
ngrok http 80

