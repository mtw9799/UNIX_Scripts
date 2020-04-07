

#Micah Witman
#CIS 345
#Homework 1, Problem 1

cd \..

#collects the necessary data and stores it in temporary files
cut -f2 customers_and_contacts.txt > temp1.txt
cut -f1 customers_and_contacts.txt > temp2.txt
cut -f8 customers_and_contacts.txt > temp3.txt
cut -f9 customers_and_contacts.txt > temp4.txt
cut -f4 customers_and_contacts.txt > temp5.txt
cut -f5 customers_and_contacts.txt > temp6.txt
cut -f3 customers_and_contacts.txt > temp7.txt
cut -f7 customers_and_contacts.txt > temp8.txt

#takes the information the temporary files and puts it into a single file
paste temp{1,2,3,4,5,6,7,8}.txt -d',' > Accounts_Receivable.txt

#Displays the report
cat Accounts_Receivable.txt

#Removes temporary files
rm temp{1,2,3,4,5,6,7,8}.txt


