ansible-playbook \
  -s flexswitch_ansible.yml \
  --extra-vars \
    "syslog_aggregator=172.16.0.70 \
    hostname=act-4610 \
    ASNum=65003 \
    RouterID=3.3.3.3" \
  -i hosts -u root -k $@
#ansible-playbook -s flexswitch_ansible.yml --extra-vars "syslog_aggregator=172.16.0.70 hostname=act-4610 api_user=admin api_password=snaproute01" -i hosts -vvv -u root -k
systemssh MOTD "Bar"
systemssh Banner "Foo"
no lldp enable
systemparam hostname act
systemparam timezone UTC
no syslogcollector 172.16.0.70
no interface logical "lo0"
apply
