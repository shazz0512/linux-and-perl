echo -n "Enter a valid number: "
read a
if [[ $(($a%2)) == 0 ]];then
	echo "number is even!!!"
else
	echo "number is odd!!!"
fi
