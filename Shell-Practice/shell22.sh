# CLASS WORK - 5 (Day-2)
# ----------------------
# Making a given name proper
# converting a given name to the proper format

# input_name = "moHan daS kaRam chAND gANdhi"
# output_name = "Mohan Das Karam Chand Gandhi"

input_name="moHan daS kaRam chAND gANdhi"
echo "The original input name is: $input_name..."
echo -e "\nStrategy - 1...\n"
output_name=""
for each_name in `echo $input_name` ; do
	name_length=`expr length $each_name`
	# echo "$each_name, $name_length"
	index=1
	flag=1
	while [ $index -le $name_length ] ; do
		char=`echo $each_name | cut -c$index`
		if [ $flag -eq 1 ] ; then
			processed_char=`echo $char | tr "[a-z]" "[A-Z]"`
			output_name=$output_name$processed_char
			flag=0
		else
			processed_char=`echo $char | tr "[A-Z]" "[a-z]"`
			output_name=$output_name$processed_char
		fi
		index=`expr $index + 1`
	done
	output_name=$output_name" "
done
echo "The processed output name string is: $output_name..."

echo -e "\nStrategy - 2...\n"
output_name=""
for each_name in `echo $input_name` ; do
	first_char=`echo $each_name | cut -c1 | tr "[a-z]" "[A-Z]"`
	last_part=`echo $each_name | cut -c2- | tr "[A-Z]" "[a-z]"`
	output_name=$output_name$first_char$last_part" "	
done

echo "The processed output name string is: $output_name..."

echo -e "\nEbd of the shell script...\n"

