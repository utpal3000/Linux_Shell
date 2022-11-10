# CLASS WORK - 2 (Day-3)
# ----------------------

# Prime check user defined function
# prime_check() will take a number as input argument and checks whether the given number is Prime or not.
# If the given number is prime then the function prime_check() will return 1 otherwise it will return 0.
# After calling the function prime_check() depending upon the return value the required messages are to be printed whether the number is prime or not.
# Prime number is that number which can be divided by 1 and by the number only. As example 11, 13, 31, 29 are the prime numbers.

# code for prime_check() function
prime_check() {
	num=$1
	# here factors are searched from 2 to (num - 1)
	for (( factor = 2; factor < num ; factor++ )) ; do
		remainder=`expr $num % $factor`
		if [ $remainder -eq 0 ] ; then
			return 0
		fi
	done
	return 1
}

# main code
echo -n "Please enter one integer number: "
read number
echo "Now checking whether $number is Prime or not..."
prime_check $number
result=$?
if [ $result -eq 1 ] ; then
	echo "$number is a PRIME Number..."
else
	echo "$number is NOT a PRIME Number..."
fi

echo -e "\nEnd of the shell script...\n"

