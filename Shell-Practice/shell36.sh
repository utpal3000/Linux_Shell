# CLASS WORK - 1 (Day-4)
# ----------------------
# Dealing with indexed array in bash shell syntax

echo -n "Plese enter the number of elements: "
read n
echo -e "\nInitializing the content of the array..."
i=1
while [ $i -le $n ] ; do
	echo -ne "\tPlease enter element for the index $i: "
	read a[$i]
	i=`expr $i + 1`
done

echo -e "\nDisplaying the content of the array..."
i=1
while [ $i -le $n ] ; do
	echo -e "\tIndex Number: $i and content: ${a[$i]} and content: $((a[i]))..."
	i=`expr $i + 1`
done

echo -e "\nSearching an item in the array content..."
echo -ne "\tPlease enter your search item: "
read item
i=1
flag=0
while (( i <= n )) ; do
	# if (( item == ((a[i])) )) ; then
	if (( item == a[i] )) ; then
		echo -e "\tSuccessful searching of item $item at index $i..."
		flag=1
	fi
	i=`expr $i + 1`
done
if (( flag == 0 )) ; then
	echo -e "\tUnsuccessful searching of the search item $item in the array content..."
fi

# CLASS WORK - 1 (Day-4) statement:
# Find the maximum item, minimum item, total and average of all array elements using a SINGLE loop construct.
max_item=$((a[1]))
min_item=${a[1]}
total_item=${a[1]}
i=2
while [ $i -le $n ] ; do
	if ((max_item < a[i] )) ; then
		max_item=$((a[i]))
	fi
	if ((min_item > a[i] )) ; then
		min_item=$((a[i]))
	fi
	total_item=$(( total_item + a[i] ))
	i=$(( i + 1 ))
done

echo -e "\n\tSo the maximum item value is: $max_item..."
echo -e "\tSo the minimum item value is: $min_item..."
echo -e "\tSo the total of all item values is: $total_item..."
average_item=$(( $total_item / n))
echo -e "\tSo the average of all item values is: $average_item..."

echo -e "\nEnd of the shell script...\n"

