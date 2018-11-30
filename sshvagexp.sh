#!/usr/bin/expect -f
spawn ssh -o StrictHostKeyChecking=no vagrant@$VagrantVmIp
# expect "login:" 
# send "username\r"
expect "Password:"
send "vagrant\r"
interact
