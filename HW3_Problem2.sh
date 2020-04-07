# Micah Witman
# Homework 3, Problem 2
# CIS 345

# Forces a user off of the system,
# deletes their user profile,
# and their directory.

# Prompts the user for user account to remove
echo "Who do you want to remove (username)?"
read doomeduser

# calls userdel command
userdel -f $doomeduser

cd /home 

rm -r $doomeduser

# prints confirmation to the user
echo ""$doomeduser" has been removed from the system."
