#!/bin/bash

#This script was created to help people generate random password without much of an effort.

#Generate a random string 6 characters using openssl.
alpha=$(openssl rand -base64 6)

#Use date with nano seconds switch.
datevalue=$(date +%N)

#Provide a list of spectial characters to be used with the password.
specialchar="!#$%^&()+=-"

#This will shuffle the special characters on every execution of this script.
shortchar=$(echo $specialchar | fold -w 1 | shuf | head -n 1)

#Generate password by clubbing multiple variables above into one strong password
bestpasswd="$alpha$datevalue$shortchar"

#Echo the password on the screen
echo $bestpasswd
