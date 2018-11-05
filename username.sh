#! /bin/bash
# username.sh
# Dan Haub
echo "Enter a username: "
echo "(you may only use lower case letters, numbers, and '_')"
echo "(it must start with a lower case letter)"
echo "(it must be between 3 and 12 characters long)"

read USR
while echo $USR | egrep -v "^[a-z0-9_]{5,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid Username - please review requirements"
	echo "Enter a username: "
	read USR
done
echo "Thank you"

