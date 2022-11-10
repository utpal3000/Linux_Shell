# Dealing with the virtual array also called associative array
# a1 a2 a3 a4 a5 ... i=3 a$i, i=`expr $i +1` => i=4 a$i

# creating a virtual array
echo -e "\nPlease enter the number of data items: \c"
read n
echo ""
i=1
while [ $i -le $n ] ; do
	var=a$i
	echo -e "\tEnter item value for the location number $i: \c"
	read $var
	i=`expr $i + 1`
done

echo -e "\nDisplaying the content of the virtual array..."
i=1
while [ $i -le $n ] ; do
	var=a$i
	b=$var
	echo -n -e "\tlocation number: $b"
	eval value=\$$b
	echo " and content: $value..."
	i=`expr $i + 1`
done

echo -e "\nSearching an item in the array content..."
echo -ne "\tPlease enter your search item: "
read item
i=1
flag=0
while [ $i -le $n ] ; do
	var=a$i
	b=$var
	eval value=\$$b
	if [ $item -eq $value ] ; then
		echo -e "\tSuccessful searching of item $item at index $i..."
		flag=1
	fi
	i=`expr $i + 1`
done
if [ $flag -eq 0 ] ; then
	echo -e "\tUnsuccessful searching of the search item $item in the array content..."
fi

echo -e "\nEnd of the shell script...\n"

