# Calculator program using user defined functions (modified)
# In this shell script we shall develop a calculator program using user defined functions (version - 2: no return statements from the user defined functions)
# In this program user will pass three command line arguments i.e. num1, num2, and the choice value
# if choice = 1 then addition operation
# if choice = 2 then subtration operation
# if choice = 3 then multiplication operation
# if choice = 4 then division operation
# we shall define four user defined functions for all these arithmetic operations

# code for calculate_add() user defined function (UDF)
calculate_add() { 
	n1=$1
	n2=$2
	answer=`expr $n1 + $n2`
}

# code for calculate_sub() user defined function (UDF)
calculate_sub() { 
	n1=$1
	n2=$2
	answer=`expr $n1 - $n2`
}

# code for calculate_mul() user defined function (UDF)
calculate_mul() { 
	n1=$1
	n2=$2
	answer=`expr $n1 \* $n2`
}

# code for calculate_div() user defined function (UDF)
calculate_div() { 
	n1=$1
	n2=$2
	if [ $n2 = 0 ] ; then
		echo "Division by ZERO is Illegal...!!!"
		echo "Please try again...!!!"
		flag=0
	else
		answer=`echo "scale=4; ($n1 / $n2)" | bc`
		flag=1
	fi
}

# main program code here
if [ $# -lt 3 ] ; then
	echo "Insufficient number of arguments passed...!!!"
	echo "USAGE: shell42.sh [num1] [num2] [option_no]"
else
	num1=$1
	num2=$2
	choice_no=$3
	case $choice_no in
		1) echo -e "\nADDITION Operation has been selected..."
		   calculate_add $num1 $num2
		   echo "So $num1 + $num2 = $answer..."
	       ;;
		2) echo -e "\nSUBTRACTION Operation has been selected..."
		   calculate_sub $num1 $num2
		   result=$?
		   echo "So $num1 - $num2 = $answer..."
	       ;;
		3) echo -e "\nMULTIPLICATION Operation has been selected..."
		   calculate_mul $num1 $num2
		   result=$?
		   echo "So $num1 * $num2 = $answer..."
	       ;;
		4) echo -e "\nDIVISION Operation has been selected..."
		   calculate_div $num1 $num2
		   result=$?
		   if [ $flag -eq 1 ] ; then
		   		echo "So $num1 / $num2 = $answer..."
		   fi
	       ;;       	       	  
	esac
fi

echo -e "\nEnd of the shell script...\n"


