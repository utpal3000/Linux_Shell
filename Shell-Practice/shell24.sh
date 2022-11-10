# Check whether a given string is palindrome or not
# That string will be called as a palindrome string if the reverse of the string is same as the original string.

# As example: malayalam, dad, mom, wow, sis, racecar, civic, level, noon, sagas, radar, refer, rotator, pop, peep, stats, solos etc.

echo -n "Please enter your string: "
read orgstr
orgstr=`echo $orgstr | tr "[A-Z]" "[a-z]"`
strlen=`expr length $orgstr`
echo "The processed given string is $orgstr with length $strlen..."

echo -e "\nSTRATEGY - 1..."
revstr=""
for (( i = strlen; i >= 1; i-- )) ; do
	char=`echo $orgstr | cut -c$i`
	revstr=$revstr$char
done
if [ $revstr = $orgstr ] ; then
	echo "The given string is a PALINDROME String..."
else
	echo "The given string is NOT a PALINDROME String..."
fi

echo -e "\nSTRATEGY - 2..."
revstr=""
for (( i = 1; i <= strlen; i++ )) ; do
	char=`echo $orgstr | cut -c$i`
	revstr=$char$revstr
done
if [ $revstr = $orgstr ] ; then
	echo "The given string is a PALINDROME String..."
else
	echo "The given string is NOT a PALINDROME String..."
fi

echo -e "\nSTRATEGY - 3..."
# case study: orgstr = "malayalam" with strlen = 9
#
#    i   j
#  ---------
#    1   9   for i = 1 to (strlen / 2)
#    2   8
#    3   7   j => (strlen - i + 1)
#    4   6
#  ---------
#  Tracing table for logic building

flag=0
for (( i = 1; i <= (strlen / 2); i++ )) ; do
	position=`expr $strlen - $i + 1`
	char1=`echo $orgstr | cut -c$i`	
	char2=`echo $orgstr | cut -c$position`	
	if [ $char1 != $char2 ] ; then
		flag=1
		break
	fi
done

if [ $flag = 0 ] ; then
	echo "The given string is a PALINDROME String..."
else
	echo "The given string is NOT a PALINDROME String..."
fi

echo -e "\nEnd of the program...\n"
