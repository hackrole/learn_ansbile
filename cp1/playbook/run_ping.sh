#!/usr/bin/env sh

# run ping
ansible testserver -i hosts -m ping

# uptime
ansible testserver -i hosts -m command -a uptime
ansible testserver -i hosts -a uptime

# see log
ansible testserver -a 'tail /var/log/dmesg'
ansible testserver -a 'tail /var/log/syslog'
