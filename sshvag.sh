#!/bin/bash
VagrantVmIp="$1"
ssh-keygen -R "$VagrantVmIp"
expect -c "spawn ssh -o StrictHostKeyChecking=no vagrant@$VagrantVmIp; expect assword:; send vagrant\r; interact"

# VagrantVmIp="$1" && sshvagexp.sh
# ssh "-o StrictHostKeyChecking=no vagrant@$VMIP"

# $(expect -c ' 
#     spawn ssh -o StrictHostKeyChecking=no '"vagrant@$VagrantVmIp"'
#     expect "*?assword:*" 
#     send "vagrant\r"
#     expect {
#         "Permission denied, please try again." {
#             send user "Wrong pass" 
#             exit 5
#         }
#     }
# '); resultOfExpect=$?
# echo "Result of Expect is $resultOfExpect"
