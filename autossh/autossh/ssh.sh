#!/usr/bin/expect -f
log_file /root/sshdir/expect.log
set timeout 300
set rip [lindex $argv 0]
set username "root"
set password "123456"
#spawn ssh root@$rip
spawn ssh-copy-id root@$rip
expect {
            #first connect, no public key in ~/.ssh/known_hosts
            "Are you sure you want to continue connecting (yes/no)?" {
            send "yes\r"
            expect "password:"
                send "$password\r"
            }
            #already has public key in ~/.ssh/known_hosts
            "password:" {
                send "$password\r"
            }
            "Now try logging into the machine" {
                #it has authorized, do nothing!
            }
        }
#expect "~#"
#send "chattr -ie /root/.ssh/authorized_keys\r"
#expect "~#"
#send "exit\r"
expect eof
