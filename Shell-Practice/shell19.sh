# Adding all values provided through command line arguments
total=0

for comm_arg in $@ ; do
	echo "So the current command line arguments is: $comm_arg..."
	total=`expr $total + $comm_arg`
	echo "So the current argument is $comm_arg and total is $total..."
done
echo -e "\nSo the final sum of all command line arguments is: $total..."
echo -e "\nEnd of the program...\n"
