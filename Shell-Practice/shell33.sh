# Generating Fibonacci series using user defined recursive function
# Fibonacci Numbers: 1  1  2  3  5  8 13 21 34 55 ...
#             Index: 1  2  3  4  5  6  7  8  9 10 ...
# Recursive function has two cases:
# 1) Base Case: For certain inputs outputs are pre-known to us. When the base case will be satisfied then the recursion will terminate.
# 2) Recursive Case: Here in this case the function will call itself either directly or indirectly. Direct recursion means from the function body it will call itself. And on the other hand, indirect recursion means the function will call another function and in turn the other function will call the previous function.

# the following user defined function finds and prints the n-th Fibonacci number

fibo() {
	if [ $1 -eq 1 -o $1 -eq 2 ] ; then  # base case
		echo 1
	else
		position1=`expr $1 - 2`
		position2=`expr $1 - 1`
		f1=`fibo $position1`  # direct recursive case
		f2=`fibo $position2`  # direct recursive case
		f3=`expr $f1 + $f2`
		echo $f3
	fi
}

echo -n "Please enter the number of terms: "
read num
i=1
while [ $i -le $num ] ; do
	fibo $i
	i=`expr $i + 1`
done
echo -e "\nEnd of the shell script...\n"



