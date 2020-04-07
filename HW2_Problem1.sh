#Micah Witman
#HW2 Problem 1

#Reads in the system time and displays
#a different message, depending on the time.

#gets the system date and parses out the hour
timevar=$(date | cut -d' ' -f4 | cut -d':' -f1)

#if loop to output specific messages 
if [ $timevar -ge 1 ] && [ $timevar -lt 12 ]
then
	echo "Good Morning $USER"
	echo $(finger -l)
fi

if [ $timevar -ge '12' ] && [ $timevar -lt '18' ]
then
	echo "Good Afternoon $USER"
	echo $(finger -l)
fi

if [ $timevar -ge '18' ] && [ $timevar -le '24' ]
then
	echo "Good evening $USER"
	echo $(finger -l)
	
fi
