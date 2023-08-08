#!/bin/bash

sudo nmap -sU -sC --top-ports 20 -oA nmap/udp-top20-scripts $1
