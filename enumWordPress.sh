#!/bin/bash

wpscan --url $1 --enumerate  u,p,t,cb,dbe --plugins-detection aggressive | tee wpscan.log
