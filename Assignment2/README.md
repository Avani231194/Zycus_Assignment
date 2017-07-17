- Here is the script  bash/python script that takes list of hostnames (comma separated) as an argument.
- This script, when executed, will connect to all the servers via. SSH (standard port) (assumeed password-less connectivity) and give a single prompt to the user.
- When the user executes a command on this prompt, the script should run the command on all connected servers and display the output.

# change the permission of the script and make it executable
  - chmod 777 script.sh
# Now run the script along with the arguments (assuming the 2 hostname be: host1 and host2)
  - ./script.sh host1,host2

 Note :

 You can pass the hostname as an argument using any of two ways :
    1) Either you should have entry in DNS
    2) Or you can do manual entry in your /etc/hosts file
            EXAMPLE:       ip host1
                           ip host2

