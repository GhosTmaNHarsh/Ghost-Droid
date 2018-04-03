blue='\e[1;34m'
re='\e[1;31m'
clear
echo " "
echo -e $lg " +-------------------------------------------+"
echo -e " |         ${ye}Ghost-Droid Basic-setup    ${lg}       |"
echo -e $lg	" +-------------------------------------------+"
lg='\e[1;32m'
ye='\e[1;33m'
which figlet > /dev/null 2>&1
if [ "$?" -eq "0" ]
 then
    echo " "
    echo -e $ye "[${re} ✔ ${ye}]...............................${lg}[ Figlet ]"
    echo " "
    sleep 2
 else
    echo -e $blue " [ ! ] Installing Figlet........."
    pkg install figlet -y > /dev/null 2>&1
    echo " "

fi
which msfconsole > /dev/null 2>&1
if [ "$?" -eq "0" ]
 then
    echo -e $ye "[ ${re}✔ ${ye}]............................${lg}[ Metasploit ]"
    which msfconsole > /dev/null 2>&1
    echo ""
    sleep 2
 
 else 
   echo ""
   echo "   [-] Metasploit not found. Installing Metasploit "
   git clone ,.............
  sleep 2
  
fi
echo " "
echo -e $ye "[${re} ∆ ${ye}] This Could take about 2-3 minutes or less"
echo "       depending on your Internet connection"
echo " "
apt install toilet -y >/dev/null 2>&1
pkg install ruby -y > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1
echo -e $lg ""
figlet -f small "Installation"
echo -e $ye ""
figlet -f small " Completed "
chmod 777 ghost-droid
mkdir /sdcard/ghost
echo " "
echo -e $ye " Now Just type ghost-droid to start the tool "
