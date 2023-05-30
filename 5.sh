echo -n "enter the number of times: "
read n
a=0
b=1
for ((i=0;i<=$n;i++))
do
	c=$(($a+$b))
	echo "$c"
	a=$b
	b=$c
done
