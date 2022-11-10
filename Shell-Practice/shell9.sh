# While and for loop constructs
echo -e "\nLooping Strategy - 1..."
echo "-----------------------"
count=1
while [ $count -le 5 ] ; do
	echo "Looping for count = $count..."
	count=`expr $count + 1`	
done

echo -e "\nLooping Strategy - 2..."
echo "-----------------------"
# runs only in bash shell
count=1
while (( count <= 5 )) ; do
	echo "Looping for count = $count..."
	count=`expr $count + 1`	
done

echo -e "\nLooping Strategy - 3..."
echo "-----------------------"
# runs only in bash shell
max_count=10
for((count = 1; count <= max_count; count += 2)) ; do
	echo "Looping for count = $count..."
done

echo -e "\nLooping Strategy - 4..."
echo "-----------------------"
echo "All the alphabets in lower case are:"
for alpha in `cat alphabet.txt` ; do
	echo -n "$alpha, "
done

echo -e "\n\nLooping Strategy - 5..."
echo "-----------------------"
# shell script to generate a multiplication table
n=5
for i in 1 2 3 4 5 6 7 8 9 10 ; do
	product=`expr $i \* $n`
	echo "$n x $i = $product..."
done

echo -e "\nLooping Strategy - 6..."
echo "-----------------------"
# using the until loop construct
count=1
until [ $count -gt 5 ] ; do
	echo "Looping for count = $count..."
	count=`expr $count + 1`
done

echo -e "\nLooping Strategy - 7..."
echo "-----------------------"
# demonstration of nested loops
echo "Visit to Doctor..."    # 1 time execution
totalmedicount=0
for (( day = 1; day <= 5; day++ )) ; do
	echo "Good Morning..."    # 5 times execution
	medicount=1
	while (( medicount <= 3 )) ; do
		echo "Day No.: $day and Medicine No.: $medicount..."    # 15 times execution
		medicount=$(( medicount + 1 ))
		totalmedicount=`expr $totalmedicount + 1`
	done
	echo "Good Night..."    # 5 times execution
	echo "--------------------------------------------"
done
echo "Thanks to Doctor..."    # 1 time execution
echo "Total number of medicine consumed is $totalmedicount..."

echo -e "\nEnd of the program..."


