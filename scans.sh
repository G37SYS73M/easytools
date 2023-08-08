#!/bin/bash

mkdir nmap
sudo nmap  -sV -sC --min-rate 10000 $1 -v -Pn -oN nmap/default.sVsC

sudo nmap --script=vuln --min-rate 10000 $1 -Pn -oN nmap/script.vuln
 
sudo nmap -p- --min-rate 10000 $1 -Pn -oN nmap/allPorts

sudo nmap -sU -p- --min-rate 10000 $1 -oN nmap/alludp



