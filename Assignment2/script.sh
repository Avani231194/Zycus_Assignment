#!/bin/bash
hostname=$@
username=vagrant

for i in $(echo $hostname | sed "s/,/ /g"); do
  ssh $username@$i "
  hostname -I | cut -d ' ' -f2  ;uptime | grep -ohe '"load average[s:][: ].*"'
  "
done
