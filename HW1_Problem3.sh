#!/bin/bash

#Micah Witman
#CIS 345
#Homework 1, Problem 3

cd \..

#makes a copy of the original .txt file except for DOBs
cut -f1,2,3,4,5,6,7,8 customers_and_contacts.txt > customers_and_contactsCopy.txt

#copies the birthdates to a temp file
cut -f9 customers_and_contacts.txt > temp0.txt 

#changes delimiter from / to \t
sed 's_/_\t_g' temp0.txt > temp1.txt

#parses the months, days, and years into seperate files
cut -f1 temp1.txt > temp2.txt
cut -f2 temp1.txt > days1.txt
cut -f3 temp1.txt > years.txt

#changes month format of DOBs
sed 's_01_January_g' temp2.txt > temp3.txt
sed 's_02_February_g' temp3.txt > temp4.txt
sed 's_03_March_g' temp4.txt > temp5.txt
sed 's_04_April_g' temp5.txt > temp6.txt
sed 's_05_May_g' temp6.txt > temp7.txt
sed 's_06_June_g' temp7.txt > temp8.txt
sed 's_07_July_g' temp8.txt > temp9.txt
sed 's_08_August_g' temp9.txt > temp10.txt
sed 's_09_September_g' temp10.txt > temp11.txt
sed 's_10_October_g' temp11.txt > temp12.txt
sed 's_11_November_g' temp12.txt > temp13.txt
sed 's_12_December_g' temp13.txt > temp14.txt

#pastes refined DOBs back into single file
paste -d' , ' temp14.txt days1.txt years.txt  > date.txt
paste customers_and_contactsCopy.txt date.txt > endproduct.txt

#deletes temporary files
rm temp{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14}.txt
rm years.txt
rm days1.txt
rm date.txt
rm customers_and_contactsCopy.txt
