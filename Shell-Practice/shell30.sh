# More on User Defined functions
# function definition to check global scope of the variables
called_function() {
	echo "Passed arguments are $1, $2, $3..."
	total=$(( $1 + $2 + $3 ))
	return $total
}

my_function() {
	var1=2000
	var2=3000
	if (( var1 % 2 == 0 )) ; then
		var3=8000
	fi
	sum=$(( var1 + var2 + var3 ))
}

# calling the function
called_function 10 20 30
result=$?
echo "So the calulated sum is $result..."
echo ""
called_function 100 200 300
result=$?
echo "So the calulated sum is $result..."


echo -e "\nEnd of the shell scipt...\n"
# as we know a function can return a byte only. So the return value will range from 0 to 255
# All variables in shell script will have the global scope
# No local variables can be defined in shell script.

# 100 + 200 + 300 = 600
# 600 = 512 + 88 = 512 + 64 + 16 + 8
# 600 = 0000 0010 0101 1000
#       --------- ---------
#       High Byte Low Byte
#          (2)      (88)
#

var1=100
var2=200
echo "Before alling the function values are var1 = $var1, var2 = $var2 and var3 = $var3..."
my_function
echo "After calling the function values are var1 = $var1, var2 = $var2 and var3 = $var3..."






