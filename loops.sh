# OnlineGDB Bash shell

# loops.sh
# Author: Aj Reviewer: Catalina

#!/bin/bash

# gets input from user
echo "Enter a number:" # displays text to screen
read n # stores input in a variable to be used three ways, below

# prints the multiplication table from 1 to n, one row per line
# loops through the numbers 1 to n, increments of 1
for((i = 1; i <= n; i++))
do
row="" # creates an empty variable to store each line
    
    # nested loop
    for((j = 1; j <= n; j++))
    do
    # calls row variable to be updated with new values
    row="$row$((i * j)) " # empty space between each value
    done # end of nested loop
    
echo "$row" # displays each row of the table
done # end of outer loop

# prints n factorial (n!) if n is between 1 and 10
# otherwise if n is greater than 10, prints a message to user
if ((n <= 10)) # condition
then
    fact=1 # sets starting factorial to 1 (1!)
    
    # embedded loop
    for((k = 1; k <= n; k++))
    do
    fact=$((fact*k)) # calculates n! by multiplying all previous k
    done # end loop

    echo "$n! = $fact" # displays n! to screen
else # if n is greater than 10
    echo "$n is greater than 10" # alternative message to calculated factorial
fi # end of if-else statement

# prints all prime numbers from 2 to n
# loops through all the numbers from 2 to n
for((l = 2; l <= n; l++))
do
prime=1 #sets a variable to represent when a number is prime

    # inner loop
    # divides each number by every number smaller than it
    for ((m = 2; m < l; m++))
    do
        # if any values have no remainder then it is not prime
        if ((l % m == 0))
        then
            prime=0 # updates the state of prime
        fi # ends if statement
    done # ends inner loop
    
    # if statement displays only the prime numbers
    if ((prime == 1))
    then
        
        echo -n "$m "
        
    fi # ends if statement
done # ends loop
echo ""