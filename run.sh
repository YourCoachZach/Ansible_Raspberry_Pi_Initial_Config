#/bin/bash

echo "Specific group of hosts? (y/n)"
read specific_hosts
if [ "$specific_hosts" = "y" ]
then
  echo "Which hosts group do you want to run this on?"
  read host_group
  ansible-playbook -s -i hosts ansible-pi.yml -l $host_group
else
  ansible-playbook -s -i hosts ansible-pi.yml
fi
