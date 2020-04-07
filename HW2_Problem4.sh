#Micah Witman
#HW2 Problem 4

#Interactive phonebook lookup

cd \..
#If there are no arguments, prompt user for name.
#Otherwise, search for a first name match
#then last name match and display the
#required information.

if [ -z "$1" ] && [ -z "$2" ]
then
	echo "Enter First Name:"
	read first_name
	echo "Enter Last Name:"
	read last_name
	grep $first_name customers_and_contacts.txt > temp1.txt
	grep $last_name temp1.txt > temp2.txt
	cut -f1,2,7,3 temp2.txt
	rm temp{1,2}.txt
else
	grep $1 customers_and_contacts.txt > temp1.txt
	grep $2 temp1.txt > temp2.txt
	cut -f1,2,7,3 temp2.txt
	rm temp{1,2}.txt
fi

