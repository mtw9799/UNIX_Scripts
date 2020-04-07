# Micah Witman
# Homework 4, Problem 1
# CIS 345

# Determines if any programs with setuid permissions
# have been altered or created on any system since 
# this script has been ran last.

# Finds all programs and with setuid permissions, lists them, then
# writes to a text file. The text file will have a list of programs
# and permissions and a total count.

find / -user root -perm -4000 -exec ls -ldb {} \; > /Documents/temp.txt
cat /Documents/temp.txt