
while true;do
	echo "-----MENU------"
	echo "1. addition"
	echo "2. Subtraction"
	echo "3. Multiply"
	echo "4.divide"
	echo "5.square"
	echo "6. Exit"
	echo -n "Enter your choice: "
	read choice

	case $choice in

		1)
                        echo -n "Enter two numbers: "
                        read a
                        read b
			res=$((a+b))
			echo "Addition : $res"
		    ;;

	    2)

		    echo -n "Enter two numbers: "
                        read a
                        read b
                        res=$((a-b))
                        echo "Subtraction : $res"
			;;
		3)

			echo -n "Enter two numbers: "
                        read a
                        read b
                        res=$((a*b))
                        echo "Multiply : $res"
			;;
		4)

			echo -n "Enter two numbers: "
                        read a
                        read b
                        res=$(echo "scale=4; $a / $b" | bc)
                        echo "Divide : $res"
			;;
		5)

			echo -n "Enter a numbers: "
                        read a
                      
                        res=$((a**2))
                        echo "Square : $res"
			;;





	    6)
		    echo "Exiting....."
		    break
    esac
done

