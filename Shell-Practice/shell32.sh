# Using optimized prime check function we shall find all prime numbers within a user given range and print them on the console and also on a data file

# number = 100
# Always factors of a number come in pairs
# As example: for 100 factors are:
# 1 and 100, 2 and 50, 4 and 25, 5 and 20 and 10 and 10
# So if x is a factor for num then the other pair factor is n / x

# prime_check_optimized() function code
prime_check_optimized() {
	num=$1
	sqrt_num=`echo "scale=0; sqrt($num)" | bc -l`  # -l stands for library function to be used for evaluation...
	# echo $sqrt_num
	# for (( factor = 2; factor < num; factor++ )) ; do
	for (( factor = 2; factor <= sqrt_num; factor++ )) ; do
		remainder=`expr $num % $factor`
		if [ $remainder -eq 0 ] ; then
			return 0
		fi	
	done
	return 1
}

# main code
if [ $# -lt 3 ] ; then
	echo -e "\nInsufficient number of command line arguments passed..."
	echo -e "\nUSAGE: shell_program_name lower_limit upper_limit output_file_name"
	echo -e "\nTry again...!!!\n"
else
	llimit=$1
	ulimit=$2
	file_name=$3
	echo -e "\nAll the Prime Numbers within the range $llimit to $ulimit are:\n"
	echo -e "All the Prime Numbers within the range $llimit to $ulimit are:\n" > $file_name
	prime_string=""
	for (( number = llimit; number <= ulimit; number++ )) ; do
		prime_check_optimized $number
		result=$?
		if [ $result -eq 1 ] ; then
			echo -n "$number, "
			echo $number >> $file_name
			prime_string=$prime_string$number", "
		fi
	done
	echo $prime_string >> $file_name
	echo -e "\n Successful end of the shell script..."
fi

# prime_check_optimized 10000
# prime_check_optimized 30
# prime_check_optimized 50
# prime_check_optimized 49

