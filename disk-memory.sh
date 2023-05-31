while true; do 
	echo "---MENU---"
	echo "1. disk usage"
	echo "2. memory usage"
	echo "3. exit"
	
	echo  -n "Enter your choice"
        read choice

	case $choice in 

		1)
			echo "Disk usage is "
			free
			read -n 1 -s -r -p "press any key to continue"
			;;

		2)

		        echo "memory usage is "
		        df -k
		        read -n 1 -s -r -p "press any key to continue"	
                         ;;

		3)	 
                        echo "Exiting"
			break
			;;
			
	esac
done

