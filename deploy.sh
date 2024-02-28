#!/bin/bash
echo '   _____          __          ____ ___            .___       __                
  /  _  \  __ ___/  |_  ____ |    |   \______   __| _/____ _/  |_  ___________ 
 /  /_\  \|  |  \   __\/  _ \|    |   /\____ \ / __ |\__  \\   __\/ __ \_  __ \
/    |    \  |  /|  | (  <_> )    |  / |  |_> > /_/ | / __ \|  | \  ___/|  | \/
\____|__  /____/ |__|  \____/|______/  |   __/\____ |(____  /__|  \___  >__|   
        \/                             |__|        \/     \/          \/   
        
'
echo -e "\n\n[stop nginx ]\n";
systemctl stop nginx;
echo -e "\n[nginx is now off]\n";
killall ngrok;
echo -e "[ngrok is now off] \n";
cd ..;
printf "Repository: ";
sudo git pull;
echo -e "\n[start nginx ]\n";
systemctl start nginx;
echo -e "\n[nginx is now on]\n";
read -n 1 -s -r -p "Press any key to continue to ngrok..."
ngrok http 80

