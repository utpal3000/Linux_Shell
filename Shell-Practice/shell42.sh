# Calculator program using user defined functions
# In this shell script we shall develop a calculator program using user defined functions (version - 1: return statements from the user defined functions)
# In this program user will pass three command line arguments i.e. num1, num2, and the choice value
# if choice = 1 then addition operation
# if choice = 2 then subtration operation
# if choice = 3 then multiplication operation
# if choice = 4 then division operation

# code for calculate_add() user defined function (UDF)
calculate_add() { 
	n1=$1
	n2=$2
	answer=`expr $n1 + $n2`
	return $answer
}

# code for calculate_sub() user defined function (UDF)
calculate_sub() { 
	n1=$1
	n2=$2
	answer=`expr $n1 - $n2`
	return $answer
}

# code for calculate_mul() user defined function (UDF)
calculate_mul() { 
	n1=$1
	n2=$2
	answer=`expr $n1 \* $n2`
	return $answer
}

# code for calculate_div() user defined function (UDF)
calculate_div() { 
	n1=$1
	n2=$2
	if [ $n2 = 0 ] ; then
		echo "Division by ZERO is Illegal...!!!"
		echo "Please try again...!!!"
		return 0
	else
		answer=`expr $n1 / $n2`
		return $answer
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
		   result=$?
		   echo "So $num1 + $num2 = $result..."
	       ;;
		2) echo -e "\nSUBTRACTION Operation has been selected..."
		   calculate_sub $num1 $num2
		   result=$?
		   echo "So $num1 - $num2 = $result..."
	       ;;
		3) echo -e "\nMULTIPLICATION Operation has been selected..."
		   calculate_mul $num1 $num2
		   result=$?
		   echo "So $num1 * $num2 = $result..."
	       ;;
		4) echo -e "\nDIVISION Operation has been selected..."
		   calculate_div $num1 $num2
		   result=$?
		   if [ $result -ne 0 ] ; then
		   		echo "So $num1 / $num2 = $result..."
		   fi
	       ;;	       	       	  
	esac
fi

echo -e "\nEnd of the shell script...\n"


# -50 => -(32 + 16 + 2) = -0011 0010
#                          1100 1101
#                                 +1
#                          ---------
#                          1100 1110 => 128 + 64 + 14 = 206


