
#CIS 345
#Micah Witman
#Homework 2, Problem 2

cd \..
cp customers_and_contacts.txt HW2Problem2.txt

#Prompts user for information
#and stores information in variables
echo "Input first name:"
read firstname
echo "Input last name:"
read lastname
echo "Input address:"
read address
echo "Input city:"
read city
echo "Input state (ex. AK):"
read state
echo "Input zip code:"
read zipcode
echo "Input phone number (ex. 123-456-7890):"
read phonenumber
echo "Input SSN (ex. 123-45-6789):"
read SSN
echo "Input birthdate (ex. 01/01/2020):"
read birthdate

#Inserts variables into temp files
echo $firstname > temp1.txt
echo $lastname > temp2.txt
echo $address > temp3.txt
echo $city > temp4.txt
echo $state > temp5.txt
echo $zipcode > temp6.txt
echo $phonenumber > temp7.txt
echo $SSN > temp8.txt
echo $birthdate > temp9.txt

#Pastes together temp files and inserts data into file
paste temp{1,2,3,4,5,6,7,8,9}.txt > temp10.txt
paste temp10.txt >> HW2Problem2.txt

#Removes temp files
rm temp{1,2,3,4,5,6,7,8,9,10}.txt
