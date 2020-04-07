#!/bin/bash

#Micah Witman
#CIS 345
#Homework 1. Problem 2

cd \..

#copies the original list into a temporary file
cp customers_and_contacts.txt temp.txt

#redacts SSNs
sed 's/[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]/XXX-XX-XXXX\t/g' temp.txt > Telemarketing.txt 

#deletes the temporary file
rm temp.txt

