while true; do
	echo "Menu"
	echo "1.create a directory"
	echo "2.create a file"
	echo "3.Read to a file"
	echo "4.write to a file"
	echo "5.delete the file"
	echo "6.delete the directory"
	echo "7.Exit"
	echo -n  "Enter your choice"
	read choice


	case $choice in
		1 )
		       	echo -n "enter the name for directory "
			read dirname
			mkdir "$dirname"
			echo "Directory $dirname created succesfully"
			read -n 1 -s -r -p "press any key to continue"
			;;

		2 )
		      
		        echo -n " enter the name for file "
			read  file
			touch "$file"
			echo "File $file is successfully created "
			read -n 1 -s -r -p "press any key to continue"
			;;
		3 )
		        echo -n "enter the file name you want to read"	
			read file
			if [[ -f "$file" ]];then
			echo "content of file $file"	
			cat "$file"
		           else
				   echo "file $file dont exits"
			fi
	               read -n 1 -r -s -p "press any key to continue"		
		       ;;
	       4) 
		       echo -n "Enter the file name you want to write "
		       read file
		       echo "Enter the text then press(ctrl+d)to save"
		       cat > "$file"
		       echo "text wriitten to file is $file "
		       ;;
	       5) 
		              

                       echo -n "Enter the file name"
		       read file
		       if [[ -f "$file" ]]; then
			       echo "file $file deleted succesfully"
			       rm "$file"
		       else
			       echo "file $file dont exists"
			      
		       fi
		       read -n 1 -r -s -p "press any key to continue"
                                  ;;
		6)	       
                      
			echo -n "Enter directory name"
			read dir
			if [[ -d "$dir" ]];then
				echo "directory $dir deleted successfully"
				rm -r "$dir"
			else
				echo "directory $dir dont exists"
			fi
			read -n 1 -r -s -p "press any key to continue"
                         ;;



		 7)

		      echo "Exiting"
	              break
	              ;;

                 *)
			 echo "Invalid response"



                               
			read -n 1 -r -s -p "press any key to continue"
			;;
		esac
	done		

	       
