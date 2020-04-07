# Micah Witman
# Homework 3, Problem 1
# CIS 345

# Prompts the user for the necessary information to
# create a user. Then calls the useradd command and
# any other command necessary to create a user.

echo "You are choosing to create a new user."
echo "Input user name: "
read newusername
echo "Input first name: "
read newfirstname
echo "Input last name: "
read newlastname
newrealname=`echo $newfirstname $newlastname`
echo "Input room number: "
read newroomnumber
echo "Input phone number: "
read newphone
echo "Input primary group (Press Enter for default): "
read newgroup
echo "Input shell (Press Enter for default): "
read newshell

if [ -z $newgroup ] && [ -z $newshell ]
then
    useradd -m $newusername
    passwd $newusername
    chfn -f "$newrealname" $newusername
    chfn -w "$newphone" $newusername
    chfn -r "$newroomnumber" $newusername
elif [ -z $newgroup ]
then 
    useradd -m -s $newshell $newusername
    passwd $newusername
    chfn -f "$newrealname" $newusername
    chfn -w "$newphone" $newusername
    chfn -r "$newroomnumber" $newusername
elif [ -z $newshell ]
then
    useradd -m -g $newgroup $newusername
    passwd $newusername
    chfn -f "$newrealname" $newusername
    chfn -w "$newphone" $newusername
    chfn -r "$newroomnumber" $newusername
fi 