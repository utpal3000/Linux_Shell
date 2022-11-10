# Case-Switch usage (Version - 3) (bash syntax only)
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
echo "6 >  E X P O N E N T I A T I O N  O P E R A T I O N ..."
echo "* >  E X I T  O P E R A T I O N ..."
echo -e "Please enter your choice number: \c"
read choice_no
case $choice_no in
	1) echo -e "\nAddition operation has been selected..."
	   result=$((num1 + num2))
	   echo "So the required result is $result = $num1 + $num2..."
	   ;;
	2) echo -e "\nSubtraction operation has been selected..."
	   result=$((num1 - num2))
	   echo "So the required result is $result = $num1 - $num2..."
	   ;;
	3) echo -e "\nMultiplication operation has been selected..."
	   result=$((num1 * num2))
	   echo "So the required result is $result = $num1 * $num2..."
	   ;;
	4) echo -e "\nDivision operation has been selected..."
	   result=$((num1 / num2))
	   echo "So the required result is $result = $num1 / $num2..."
	   ;;
	5) echo -e "\nModulus operation has been selected..."
	   result=$((num1 % num2))
	   echo "So the required result is $result = $num1 % $num2..."
	   ;;
	6) echo -e "\nExponentiation operation has been selected..."
	   result=$((num1 ** num2))  # sh shell does not support **
	   echo "So the required result is $result = $num1 ** $num2..."
	   ;;   
	*) echo -e "\nExit operation has been selected..."
	   echo "Exiting from all the operations..."
	   ;;
esac

echo -e "\nEnd of the program..."
