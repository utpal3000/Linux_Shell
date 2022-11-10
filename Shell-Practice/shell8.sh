# CLASSWORK:
# ----------
# Rewriting calculator program using conditional statements
echo -n "Please enter the first number: "
read num1
echo -e "Please enter the second number: \c"
read num2
echo -e "\nSo the input numbers are $num1 and $num2...\n"
echo "M A I N  M E N U ..."
echo "~~~~~~~~~~~~~~~~~~~~"
echo "1 >  A D D I T I O N  O P E R A T I O N ..."
echo "2 >  S U B T R A C I O N  O P E R A T I O N ..."
echo "3 >  M U L T I P L I C A T I O N  O P E R A T I O N ..."
echo "4 >  D I V I S I O N  O P E R A T I O N ..."
echo "5 >  M O D U L U S  O P E R A T I O N ..."
echo "* >  E X I T  O P E R A T I O N ..."
echo -e "Please enter your choice number: \c"
read choice_no
if [ $choice_no -eq 1 ] ; then
	echo -e "\nAddition operation has been selected..."
	result=`expr $num1 + $num2`
	echo "So the required result is $result = $num1 + $num2..."
elif [ $choice_no -eq 2 ] ; then
	echo -e "\nSubtraction operation has been selected..."
	result=`expr $num1 - $num2`
	echo "So the required result is $result = $num1 - $num2..."
elif [ $choice_no -eq 3 ] ; then
	echo -e "\nMultiplication operation has been selected..."
	result=`expr $num1 \* $num2`
	echo "So the required result is $result = $num1 * $num2..."
elif [ $choice_no -eq 4 ] ; then
	echo -e "\nDivision operation has been selected..."
	if [ $num2 -eq 0 ] ; then
		echo "DIVISION by ZERO is Illegal...!!!"
		echo "DIVISION Operartion can not be carried out..."
	else
		result=`expr $num1 / $num2`
	    echo "So the required result is $result = $num1 / $num2..."
	fi
elif [ $choice_no -eq 5 ] ; then
	echo -e "\nModulus operation has been selected..."
	result=`expr $num1 % $num2`
	echo "So the required result is $result = $num1 % $num2..."
else
	echo -e "\nExit operation has been selected..."
	echo "Exiting from all the operations..."
fi

echo -e "\nEnd of the program..."


