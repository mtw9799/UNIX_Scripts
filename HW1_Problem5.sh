#!/bin/bash

#Micah Witman
#CIS 345
#Homework 1, Problem 5

cd \..

#Copies data to temp file
cut -f1,2,3,4,5,6 customers_and_contacts.txt > temp1.txt

#Sorts through temp file to alphabetize data
sort -k2 temp1.txt > temp2.txt

#formats sorted data into temp files
cut -f1,2 temp2.txt > temp3.txt
#Changes delimiter from \t to single space
tr '\t' ' ' <  temp3.txt > temp4.txt

cut -f3 temp2.txt > temp5.txt
tr '\t' ' ' <  temp5.txt > temp6.txt

cut -f4,5 temp2.txt > temp7.txt
#Changes delimiter from \t to comma and single space
tr '\t' ', ' < temp7.txt > temp8.txt

cut -f6 temp2.txt > temp9.txt
#combines addresses, states, and zip codes
paste -d" " temp8.txt temp9.txt > temp10.txt

#Pastes sorted data together in proper fashion
paste -d"\n" temp4.txt temp6.txt temp10.txt > temp11.txt

#Inserts new line after each address entry
sed '/[0-9][0-9][0-9][0-9][0-9]$/a\\n' temp11.txt > HW1Problem5.txt

#deletes temporary file
rm temp{1,2,3,4,5,6,7,8,9,10,11}.txt
