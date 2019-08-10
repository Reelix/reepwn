# Variables
YELLOW='\033[1;93m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

# Code
echo ""
echo ""
echo -e "${NC}+------------------------------------------------------------------+"
echo -e "|${YELLOW}ReePwn Version 0.2 - By: Reelix - https://github.com/Reelix/reepwn${NC}|"
echo -e "+------------------------------------------------------------------+"
echo ""
echo -e "${YELLOW}OS${NC}"
echo -e "--${CYAN}"
uname -a
echo ""
echo -e "${YELLOW}Bash history${NC}"
echo -e "------------${CYAN}"
cat ~/.bash_history
echo ""
echo -e "${YELLOW}SUID things you can run owned by root (https://gtfobins.github.io/)${NC}"
echo -e "-------------------------------------------------------------------${CYAN}"
find / -user root -group $USER -perm /4000 2>/dev/null | xargs ls -l
echo ""
echo -e "${YELLOW}Useful /etc/passwd people (uid 0, 500, 501, 502, 1000, 1001, 1002, 2000, 2001, 2002)${NC}"
echo -e "------------------------------------------------------------------------------------${CYAN}"
cat /etc/passwd | grep --color=never -E "x:0|x:500|x:501|x:502|x:1000|x:1001|x:1002|x:2000|x:2001|x:2002"
echo -e "${YELLOW}Maybe a \"watch 'ps -aux | grep *name*'\" would be useful"
echo ""
echo -e "${YELLOW}How about those sudo permissions?${NC}"
echo -e "---------------------------------${CYAN}"
sudo -ln 2> /dev/null | grep -w "NOPASSWD" |  sed -e 's/^[ \t]*//'
echo ""
echo -e "${YELLOW}And POSIX permissions?${NC}"
echo -e "----------------------${CYAN}"
getcap -r / 2> /dev/null | grep "ep"
echo ""
echo -e "${YELLOW}Finding important log files you can see${NC}"
echo -e "---------------------------------------${CYAN}"
# /usr/bin/journalctl | grep root | sort
which journalctl 2>/dev/null
echo ""
echo -e "${YELLOW}Finding root owned directories that you can write to${NC}"
echo -e "----------------------------------------------------${CYAN}"
find / -user root -type d -perm -722 2>/dev/null
echo ""
echo -e "${YELLOW}Finding root owned directories that your group can access${NC}"
echo -e "---------------------------------------------------------${CYAN}"
find / -user root -type d -group $(id -g -n) 2>/dev/null
echo ""
echo -e "${YELLOW}Finding root owned files that you can edit${NC}"
echo -e "------------------------------------------${CYAN}"
find / -user root -type f -perm -722 2>/dev/null
echo ""
echo -e "${YELLOW}The End${NC}"
# export PS1="\e[1;93m\u@\h \w> \e[m"
echo "Reelix's Terminal Fix: export PS1=\"\e[1;93m\u@\h \w> \e[m\""
echo "Just something else: cat /proc/sys/kernel/randomize_va_space (0=off, 2=?)"
