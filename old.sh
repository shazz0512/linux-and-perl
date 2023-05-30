while true; do
	echo "----MENU----"
	echo "1. wordcount of file"
	echo "2. check whether dir exists else create it"
        echo "3. check whether the file is writtable so as to append it"
	echo "4. Search for the string in the file"
	echo "5. Exit"
	
	echo -n "Enter the choices: "
	read choice

	case $choice in


		1)
			echo -n "Enter the filename "
			read file
			if [[ -e "$file" ]];then
				if [[ -r "$file" ]];then
					echo "the lenght of the file is "
					cat "$file" | wc -l -w  
				fi
			else
				echo "file $file doesnt exist"
			fi

			read -n 1 -s -r -p "press any key to continue"
			;;
		2)

			echo "Enter the directory name: "
			read dir
			if [[ -d "$dir" ]];then
				echo "directory $dir exists "
			else
				echo "directory $dir doesnt exists "
				echo "New directory $dir created successfully"
				mkdir "$dir"
			fi

			read -n 1 -r -s -p "press any key to continue"
			;;


		3)

			echo -n "Enter the file name "
			read file
			if [[ -e "$file" ]];then
				if [[ -w "$file" ]];then
					echo -n "type to append to the file then press ctrl+D to save "
					cat >> "$file"
					echo "see the contents you have added to the file: "
					cat "$file"
				else 
					echo "file $file is not writable..."
				fi
			else 
				echo "file $file doesnt exist"
				echo -n "Write some data to the file: "
				cat > "$file"
				echo "New file created successfully and the content inside the file is: "
				cat "$file"

			fi
			read -n 1 -s -r -p "press any key to continue"
			;;

		4) 

			echo -n "Enter the file name: "
			read file
			if [[ -e "$file" ]];then
				if [[ -r "$file" ]];then
					echo -n "Enter the string you want to search in the file: "
					read str
					cat "$file" | grep -o "$str"
					if [[ $? -ne 0 ]];then
						echo "$str is not found"
					fi
				else
					echo "File $file is not readable"
				fi
			else
				echo "file $file doesnt exists"
			fi

			read -n 1 -s -r -p "press any key to continue "
			;;



	5)

			echo "Exiting..."
			break



		esac
	done




