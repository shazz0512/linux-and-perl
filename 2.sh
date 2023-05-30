echo "Enter two numbers "
read a
read b

while true; do
	echo "----MENU----"
	echo "1. addition"
	echo "2. Substract"
	echo "3. Multiply"
	echo "4. Division"
	echo "5. Square"
	echo "6. Exit"

	echo -n "Enter the option"
	read choice

	case $choice in

		1)
			res=$(( $a + $b))
			echo "Addition : $res"
		     
                      ;;
	     esac
     done
