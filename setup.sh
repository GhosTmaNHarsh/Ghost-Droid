lg='\e[1;32m'
ye='\e[1;33m'
blue='\e[1;34m'
re='\e[1;31m'
clear
echo " "
echo -e $lg " +-------------------------------------------+"
echo -e "  |         ${ye}Ghost-Droid Basic-setup    ${lg}       |"
echo -e $lg	" +-------------------------------------------+"
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
   git clone https://github.com/GhosTmaNHarsh/metasploit
   cd metasploit
   chmod 777 metasploit.sh
   ./metasploit.sh
   cd ..
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
figlet -f small " Completed " | lolcat
chmod 777 ghost-droid
echo -e $blue " "
echo -n " Press enter to continue............."
read mm
clear
echo ""
echo ""
test="/sdcard/ghost"
dol="/sdcard/inject"
if [ ! -d "$test" ]
 then
    echo -e $ye "  [ ${re}-${ye} ]${re} Creating a new Directory "
    mkdir /sdcard/ghost
    echo " "
    sleep 2
    echo -e $ye "  [${lg} ✔ ${ye}] ${blue}Directory Created............"
 else
    echo -e $ye "  [ ${lg}✔${ye} ] ${lg}Directory Already exist"
    echo " "
fi
if [ ! -d "$dol" ]
 then
   echo " "
   echo -e $ye "  [${re} - ${ye}]${re} Creating a new Directory "
   mkdir /sdcard/inject
   echo " "
   sleep 2
   echo -e $ye "  [${lg} ✔ ${ye}] ${blue}Directory Created............"

 else
   echo -e $ye "  [${lg} ✔ ${ye}] ${lg}Directory Aleady exist"
   echo " "
fi
echo " " 
echo -e $ye " Setup completed.................."
echo "." | lolcat
