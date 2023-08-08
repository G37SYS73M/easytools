#!/bin/bash

nikto -url http://$1 -o nikto_80.txt &

gobuster dir -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 300 -o gobuster.root -k -x $2 &

dirb http://$1 -o dirb.txt
