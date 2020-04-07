#Micah Witman
#HW2 Problem 3

#Removes people and their information from
#customers_and_contacts.txt

cd \..
cp customers_and_contacts.txt customers_and_contactsCOPY.txt

#prompts the user to choose who to remove
echo "Who do you wish to remove (first name)?"
read first_name

echo "Who do you wish to remove (last name)?"
read last_name

#searches for all matches of the first name
grep -n $first_name customers_and_contactsCOPY.txt > temp1.txt

#searches for all matches of the last name
grep $last_name temp1.txt > temp2.txt

#creates a variable and stores the line number
#of the last name match
row=$(cut -c 1 temp2.txt)

#deletes specified row. Variable denotes row.
sed "${row}d" customers_and_contactsCOPY.txt > HW2Problem3.txt

#removes temp files
rm temp{1,2}.txt
rm customers_and_contactsCOPY.txt
