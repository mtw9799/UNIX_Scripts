#!/bin/bash

#Micah Witman
#CIS 345
#Homework 1, Problem 4

cd \..

#copies original data to temp file
cp customers_and_contacts.txt temp1.txt

#searched through date for specific age group
grep -E "/19[7-9][0-9]|/2002" temp1.txt > HW1Problem4.txt

#removes temporary file
rm temp1.txt
