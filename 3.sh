a=$1
b=$2
c=$3

if [[ $c == "+" ]];then
	sum=$(($1 + $2))
	echo -e "Result: $sum\n"
elif [[ $c == "-" ]];then
	res=$(($1 - $2))
	echo -e "Result: $res\n"
fi
