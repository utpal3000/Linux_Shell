# Conditional statements (if-elif-fi) 
# Finding the maximum of three user given numbers
echo -n "Please enter the first number: "
read num1
echo -n "Please enter the second number: "
read num2
echo -n "Please enter the third number: "
read num3
# In Linux relational operators are:
# -ge -gt -le -lt -ne -eq
echo "STRATEGY - 1"
echo "============"
if [ $num1 -gt $num2 ] ; then
	if [ $num1 -gt $num3 ] ; then
		echo "So the First number is the maximum..."
		echo "So the maximum number is $num1..."
	else
		echo "So the Third number is the maximum..."
		echo "So the maximum number is $num3..."
	fi
elif [ $num2 -gt $num3 ] ; then
	echo "So the Second number is the maximum..."
	echo "So the maximum number is $num2..."
else
	echo "So the Third number is the maximum..."
	echo "So the maximum number is $num3..."
fi

echo -e "\nSTRATEGY - 2"
echo "============"
# here -a stands for AND logic
# similarly -o stands for OR logic
if [ \( $num1 -gt $num2 \) -a \( $num1 -gt $num3 \) ] ; then
	echo "So the First number is the maximum..."
	echo "So the maximum number is $num1..."
elif [ $num2 -gt $num3 ] ; then
	echo "So the Second number is the maximum..."
	echo "So the maximum number is $num2..."
else
	echo "So the Third number is the maximum..."
	echo "So the maximum number is $num3..."
fi

