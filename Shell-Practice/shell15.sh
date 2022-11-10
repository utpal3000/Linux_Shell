# Dealing with conditional statements
# Dealing with multiple different variants in conditional statements
echo "CASE STUDY - 1 (With Numeric check)"
value=10
echo "value = $value..."
if [ $value = 10 ] ; then
	echo "It is working-1..."
else
	echo "It is not working-1..."
fi
if [ $value -eq 10 ] ; then
	echo "It is working-2..."
else
	echo "It is not working-2..."
fi
if [ $value == 10 ] ; then
	echo "It is working-3..."
else
	echo "It is not working-3..."
fi
if (( value == 10 )) ; then
	echo "It is working-4..."
else
	echo "It is not working-4..."
fi
if (( value != 100 )) ; then
	echo "It is working-5..."
else
	echo "It is not working-5..."
fi

echo -e "\nCASE STUDY - 2 (With String check)"
value="ten"
echo "value = $value..."
if [ $value = "ten" ] ; then
	echo "It is working-6..."
else
	echo "It is not working-6..."
fi
if [ $value -eq "ten" ] ; then  # -eq: it is not working, syntax error
	echo "It is working-7..."
else
	echo "It is not working-7..."
fi
if [ $value == "ten" ] ; then
	echo "It is working-8..."
else
	echo "It is not working-8..."
fi
if (( value == "ten" )) ; then
	echo "It is working-9..."
else
	echo "It is not working-9..."
fi
if ((~(value == "hundred") )) ; then
	echo "It is working-10..."
else
	echo "It is not working-10..."
fi
echo -e "\nEnd of the program...\n"
