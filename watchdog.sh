# Micah Witman
# Homework 3, Problem 2
# CIS 345

# Watches for someone in the friends list
# to log on. In which case, an alert will
# be given. Additionally, an alert will be given
# when someone on the friends list logs out. 


echo `who | cut -f1 -d' '` > currentusers.txt
