#!/bin/bash
echo ' _____          __        __________                      ____ ___               __                
  /  _  \  __ ___/  |_  ____\______   \ ____ ______   ____ |    |   \___________ _/  |_  ___________ 
 /  /_\  \|  |  \   __\/  _ \|       _// __ \\____ \ /  _ \|    |   /\____ \__  \\   __\/ __ \_  __ \
/    |    \  |  /|  | (  <_> )    |   \  ___/|  |_> >  <_> )    |  / |  |_> > __ \|  | \  ___/|  | \/
\____|__  /____/ |__|  \____/|____|_  /\___  >   __/ \____/|______/  |   __(____  /__|  \___  >__|   
        \/                          \/     \/|__|                    |__|       \/          \/      
        
'
echo -e "\n[stop nginx ]\n";
systemctl stop nginx;
echo -e "\n[nginx is now off]";
killall ngrok;
echo -e "\n[ngrok is now off]";
git pull;
echo -e "\n[repository updated]";
systemctl start nginx;
echo -e "\n[nginx is now on]";
ngrok http 80

