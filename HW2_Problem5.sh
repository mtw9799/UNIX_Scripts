# Micah Witman
# HW2 Problem 5

#Converts any positive integer (1-3999) from user input
#into Roman Numerals.

#assigns the argument to a variable
inputvar=$1

#prompts user for a number if an argument is not passed.
if [ -z $1 ]
then
    echo "Please input a positive integer: "
    read inputvar
fi
#Error checking on user prompted number.
if [ $inputvar -ge 4000 ] || [ $inputvar -le 0 ]
then
    echo "Please input a positive integer less than 4000: "
    read inputvar
fi

#Converts given number to Roman Numerals
#using nested if else loop inside of a while loop.
while [ $inputvar -gt 0 ]
do
    if [ $inputvar -ge 1000 ]
    then
        inputvar=$( expr ${inputvar} - 1000 )
        outputvar=${outputvar}M
    elif [ $inputvar -ge 900 ]
    then
        inputvar=$( expr ${inputvar} - 900 )
        outputvar=${outputvar}CM
    elif [ $inputvar -ge 500 ]
    then
        inputvar=$( expr ${inputvar} - 500 )
        outputvar=${outputvar}D
    elif [ $inputvar -ge 400 ]
    then
        inputvar=$( expr ${inputvar} - 400 )
        outputvar=${outputvar}CD
    elif [ $inputvar -ge 100 ]
    then
        inputvar=$( expr ${inputvar} - 100 )
        outputvar=${outputvar}C 
    elif [ $inputvar -ge 90 ]
    then
        inputvar=$( expr ${inputvar} - 90 )
        outputvar=${outputvar}XC 
    elif [ $inputvar -ge 50 ]
    then
        inputvar=$( expr ${inputvar} - 50 )
        outputvar=${outputvar}L

    elif [ $inputvar -ge 40 ]
    then
        inputvar=$( expr ${inputvar} - 40 )
        outputvar=${outputvar}XL

    elif [ $inputvar -ge 10 ]
    then
        inputvar=$( expr ${inputvar} - 10 )
        outputvar=${outputvar}X
    elif [ $inputvar -ge 9 ]
    then
        inputvar=$( expr ${inputvar} - 9 )
        outputvar=${outputvar}IX
    elif [ "$inputvar" -ge 5 ]
    then
        inputvar=$( expr ${inputvar} - 5 )
        outputvar=${outputvar}V
    elif [ "$inputvar" -ge 4 ]
    then
        inputvar=$( expr ${inputvar} - 4 )
        outputvar=${outputvar}IV
    elif [ $inputvar -ge 1 ]
    then
        inputvar=$( expr ${inputvar} - 1 )
        outputvar=${outputvar}I
    fi
done

echo "This is your number: $outputvar"