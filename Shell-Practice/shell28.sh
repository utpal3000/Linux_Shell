# User defined function (UDF) in the shell script
# defining the function body

hello() {
	echo "Hello World...!!!"
}

my_addition() {
	echo "Adding numbers $1 and $2..."
	result=`expr $1 + $2`
	echo "So just now calculated result is $result..."
	return $result
}

# calling or invoking UDFs
hello
hello
hello
echo ""

my_addition 200 80
my_return_value=$?
echo "So the calculated sum is $my_return_value..."
echo "So the actual calculated sum is $result..."

# 280 = 256 + 16 + 8 => 0000 0001 0001 1000
#                       --------- ---------
#                       high byte low byte
#                          (1)       (24)
# Shell script functions can return only a byte (8 bits). So the return value range is 0 to 255.
# in shell script all variables are in the global scope. So there is no concept of any locan variable. And scope of any variable is not confined within a block.















