#!/bin/bash
nocolor="\033[0m"
red="\033[0;31m"
cat << "EOF"
  ,----------------,              ,---------,
        ,-----------------------,          ,"        ,"|
      ,"                      ,"|        ,"        ,"  |
     +-----------------------+  |      ,"        ,"    |
     |  .-----------------.  |  |     +---------+      |
     |  |                 |  |  |     | -==----'|      |
     |  |  I LOVE LINUX!  |  |  |     |         |      |
     |  |  Bad command or |  |  |/----|`---=    |      |
     |  |  C:\>_          |  |  |   ,/|==== ooo |      ;
     |  |                 |  |  |  // |(((( [33]|    ,"
     |  `-----------------'  |," .;'| |((((     |  ,"
     +-----------------------+  ;;  | |         |,"
        /_)______________(_/  //'   | +---------+
   ___________________________/___  `,
  /  oooooooooooooooo  .o.  oooo /,   \,"-----------
 / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
/_==__==========__==_ooo__ooo=_/'   /___________,"
`-----------------------------'


Hello dear this is my tool, it will let you collect information for any metwork, I hope you like it
--> Dura51
EOF
if [ $(whoami) != "root" ]; then
echo -e "${red}Make it root please${nocolor}"
else
ifconfig
fi
echo "--------------------------------------------------------------"
printf "\n"
printf "\n"
sleep 3
interface=$1
wlan0=$2
wlan0mon=$3
wlan1=$4
wlan1mon=$5
echo "What is your interface? "
read $1
sleep 3
if [ $1 -eq $3 ]
then
sudo airmon-ng start wlan0mon
fi
if [ $1 -eq $2 ]
then
sudo airmon-ng start wlan0
fi
if [ $1 -eq $5 ]
then
sudo airmon-ng start wlan1mon
fi
echo "-------------------------------------------------------------"
printf "\n"
printf "\n"
sleep 3
echo "What is your interface now? "
read $1
if [ $1 -eq $3 ]
then
sudo airodump-ng wlan0mon
fi
if [ $1 -eq $2 ]
then
sudo airodump-ng wlan0
fi
if [ $1 -eq $5 ]
then
sudo airodump-ng wlan1mon
fi
