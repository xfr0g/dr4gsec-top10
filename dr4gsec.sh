#!/bin/bash
# Author: xfr0g
# Date: 2024
# Name: DR4GSEC's TOP 10 

# Colors
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
WB='\033[1;37m'
NC='\033[1;0m'

# Must be root
if [[ $UID -ne 0 ]]
then
    echo "Run dr4gsec as root."
    exit 1
fi

# User Interface
function userinterface() {
    echo -e "${RED}       \****__              ____                                              "
    echo -e "         |    *****\_      --/ *\-__                                          "
    echo -e "         /_          (_    ./ ,/----'                                         "
    echo -e "           \__         (_./  /                                                "
    echo -e "              \__           \___----^__                                       "
    echo -e "               _/   _                  \                                      "
    echo -e '        |    _/  __/ )\"\ _____         *\                                    '
    echo -e "        |\__/   /    ^ ^       \____      )                                   "
    echo -e '         \___--"                    \_____ )                                  '
    echo -e '                                          "'
    echo -e "${YELLOW}▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱${NC}"
    echo -e "${RED}\t\t DR4GSEC's TOP 10${NC}"
    echo -e "${WB}Coded by: ${GREEN}xfr0g \t\t  ${WB}Thanks to: ${GREEN}insp3ct0r${NC}"
    echo -e "${WB}Version: ${GREEN}1.0 \t\t\t\t${WB}Hack ethically${NC}"
    echo -e "${YELLOW}▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱${NC}"
}
userinterface

# Options
function options() {
    clear
    userinterface
    echo ""
    echo -e "${WB}[${RED}1${WB}] theHarvester"
    echo -e "${WB}[${RED}2${WB}] Nmap"
    echo -e "${WB}[${RED}3${WB}] Wireshark"
    echo -e "${WB}[${RED}4${WB}] sn0int"
    echo -e "${WB}[${RED}5${WB}] JohnTheRipper"
    echo -e "${WB}[${RED}6${WB}] Hydra"
    echo -e "${WB}[${RED}7${WB}] Social Engineering Toolkit (SET)"
    echo -e "${WB}[${RED}8${WB}] EvilURL"
    echo -e "${WB}[${RED}9${WB}] aircrack-ng"
    echo -e "${WB}[${RED}10${WB}] sqlmap"
    
    echo -ne "Choose an option > ${RED}"
    read user_opt

}
options

# We will make a new directory where we will install all the tools
mkdir DR4GSEC
cd DR4GSEC

# Functions for each cases
function opt1() {
    
    echo ""
    echo -e "${WB}[*] Installing theHarvester..."
    
    git clone https://github.com/laramies/theHarvester.git &> /dev/null
    cd theHarvester
    pip3 install -r requirements.txt &> /dev/null

    echo ""
    
    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEM}[*] Successfully installed theHarvester!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt2() {
    
    echo ""
    echo -e "${WB}[*] Installing Nmap..."
    
    apt install nmap -y &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed Nmap!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt3() {
    
    echo ""
    echo -e "${WB}[*] Installing Wireshark..."
    
    apt install wireshark -y &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "[*] ${GREEN}Successfully installed Wireshark!"
        exit 1
    else
        echo -e "[*] ${RED}An error occured: $?"
        exit 1
    fi        

}

function opt4() {
    
    echo ""
    echo -e "${WB}[*] Installing sn0int..."
    
    apt install curl sq &> /dev/null
    curl -sSf https://apt.vulns.sexy/kpcyrd.pgp | sq dearmor | sudo tee /etc/apt/trusted.gpg.d/apt-vulns-sexy.gpg > /dev/null
    echo deb http://apt.vulns.sexy stable main | sudo tee /etc/apt/sources.list.d/apt-vulns-sexy.list
    apt update &> /dev/null
    apt install sn0int &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed sn0int!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt5() {
    
    echo ""
    echo -e "${WB}[*] Installing JohnTheRipper..."
    
    apt install john -y &> /dev/bull

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed JohnTheRipper!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt6() {
    
    echo ""
    echo -e "${WB}[*] Installing Hydra..."
    
    apt install hydra -y &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed Hydra!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt7() {
    
    echo ""
    echo -e "${WB}[*] Installing Social Engineering Toolkit (SET)..."
    
    git clone https://github.com/trustedsec/social-engineer-toolkit.git &> /dev/null
    cd setoolkit
    pip3 install -r requirements.txt &> /dev/null
    ./setup.py &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed Social Engineering Toolkit (SET)!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt8() {
    
    echo ""
    echo -e "${WB}[*] Installing EvilURL..."
    
    git clone https://github.com/UndeadSec/EvilURL.git &> /dev/null
    cd EvilUrl
    pip3 install python-nmap python-whois &> /dev/null
    
    echo ""
    
    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed EvilURL!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt9() {
    
    echo ""
    echo -e "${WB}[*] Installing aircrack-ng..."

    apt install aircrack-ng -y &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed aircrack-ng!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

function opt10() {
    
    echo ""
    echo -e "${WB}[*] Installing sqlmap..."
    
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev &> /dev/null

    echo ""

    if [[ $? -eq 0 ]]
    then
        echo -e "${GREEN}[*] Successfully installed sqlmap!"
        exit 1
    else
        echo -e "${RED}[*] An error occured: $?"
        exit 1
    fi

}

# Case for every options
    case $user_opt in
1) opt1 ;;
2) opt2 ;;
3) opt3 ;;
4) opt4 ;;
5) opt5 ;;
6) opt6 ;;
7) opt7 ;;
8) opt8 ;;
9) opt9 ;;
10) opt10 ;;
*) echo -e "Invalid option!" ;;
    esac