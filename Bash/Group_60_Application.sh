echo "======================================================================="
echo "                        GROUP 60                                      "
echo "======================================================================="
let t=0
while [ $t -le 3 ]; do
echo "Enter password"
read password
if [ $password == "App1" ]; then #main if statement
while true; do
echo "======================================================================"
	echo  "Select desired task by entering corresponding letters:"
	echo  "TASK 1:	A. Triangular Numbers"
	echo  "TASK 2:	B. Successive Product Numbers"
	echo  "TASK 3:	C. Cubic Sequence"
	echo  "---Press Q to exit---"
	read a 
echo "======================================================================="
		
	if [[ $a == "A" || $a == "a" ]]; then #if statement for choices
echo "                              TASK 1: TRIANGULAR NUMBERS               " #Task 1 begins here
echo "======================================================================="
		read -p "Enter first number of your desired range____" x
		read -p " Enter last number of your desired range____" y
echo "======================================================================="

		let even_numbers=0 
		let odd_numbers=0
		let prod_even=1
		let prod_odd=1
		for  ((i = 1; ; i++)); do
			triangular_num=$((i * (i + 1) / 2)) 
			if [ $triangular_num -gt $y ]; then
				break
			elif [ $triangular_num -ge $x ]; then
				if [ $(( triangular_num % 2 )) -eq 0 ]; then
				echo "$triangular_num---Even Number"
			
				prod_even=$((prod_even * triangular_num))
				even_numbers=$((even_numbers+1))
			else
				echo "$triangular_num---Odd Number"
                       
			    	prod_odd=$((prod_odd * triangular_num))
                                odd_numbers=$((odd_numbers+1))
			fi
			fi
		done
		echo "Even numbers = $even_numbers"
		echo "Odd numbers = $odd_numbers" 
		echo "Product of even triangular numbers = $prod_even"
		echo "Product of odd triangular numbers = $prod_odd"
echo "______________________________________________________________________________"
                        read -p "Do you wish to continue with another task [y/n] " e
                        if [[ $e == "Y" || $e == "y" ]] then
echo "______________________________________________________________________________"
                                echo "Here you go"
echo "------------------------------------------------------------------------------"
                        else
                                exit
                        fi 
		#Task 1 ends here

	elif [[ $a == "B" || $a == "b" ]]; then #If statement for B
echo "========================================================================"
echo "                                TASK 2: SUCCESSIVE PRODUCT NUMBERS      "
echo "========================================================================"
		read -p "Enter starting number:" u
		read -p "How many terms do you want to display? " v
		read -p "Enter number you want to check divisibility" w
echo "========================================================================"
		for  ((i=$u; i < $((u + v)); i++)); do
			s_product=$((i * (i+1)))
			if [ $((w % s_product)) -eq 0 ]; then
				echo "$s_product - factor of $w"
			else
				echo "$s_product - not a factor of $w"
			fi
		done 
echo "______________________________________________________________________________"
                        read -p "Do you wish to continue with another task [y/n] " e
                        if [[ $e == "Y" || $e == "y" ]] then
echo "______________________________________________________________________________"
                                echo "Here you go"
echo "------------------------------------------------------------------------------"
                        else
                                exit
                        fi 
		 #task 2 ends here
	elif [[ $a == "C" || $a == "c" ]]; then #task 3 begins here
echo "=========================================================================="
echo "                                TASK 3: CUBIC SEQUENCE                    "
echo "=========================================================================="
		 echo "The formual is (an^3) + bn + c"
		 read -p "Enter value for a____" m 
		 read -p "Enter value for b____" n
		 read -p "Enter value for c____" p
		 echo "Enter your desired range for sequence"
		 read -p "first value of range____" f_range
		 read -p "Last value of range_____" l_range
echo "========================================================================="
		 for  ((i=$f_range; i <= $l_range; i++)); do
			term=$(( (m*(i*i*i)) + (n*i) + p ))
		  	echo "$term"
			if [ $i -eq $f_range ]; then
				first_term=$term
			elif [ $i -eq $l_range ]; then
				last_term=$term
			fi
		done
			pfl=$((first_term * last_term))

			if [ $((pfl % 4)) -eq 0 ]; then
				echo "$pfl -- Multiple of 4"
			else
				echo "$pfl -- Not a multiple of 4"

			fi
echo "______________________________________________________________________________"
			read -p "Do you wish to continue with another task [y/n] " e
                        if [[ $e == "Y" || $e == "y" ]] then
echo "______________________________________________________________________________"
                                echo "Here you go"
echo "------------------------------------------------------------------------------"
                        else
                                exit
                        fi #Task 3 ends here
elif [[ $a == "Q" || $a == "q" ]] then
			exit
	
		else
echo "!!--------------------------------------------------------------------------!!"
			echo "Incorrect Choice Try again"
echo "------------------------------------------------------------------------------"
		

		fi #end if for choices
	done
else # else statement for password
	let t=$t+1
	let r=3-$t
	echo "You have $r attempts left!"
	if [ $r == 0 ]; then 
		echo "Authentication failed. Exiting..."
		exit 1
	fi
fi #end if for password
done
