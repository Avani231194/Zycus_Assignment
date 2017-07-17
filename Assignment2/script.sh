#!/bin/bash  #Shebang 
hostname=$@  #This will take the ip addresses as an input from the user
username=root  #username is root, this can be anything

for i in $(echo $hostname | sed "s/,/ /g"); do   #This will take the argument (comma seperated)
  ssh $username@$i "hostname -I | cut -d ' ' -f2  ;uptime | grep -ohe '"load average[s:][: ].*"'"  #These are the commands that will first login to the server run the commands will display the output 
done
