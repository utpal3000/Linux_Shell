# Find out the number of vowels and consonants in a user given word

echo -n "Please enter your word: "
read user_word

len_word=`expr length $user_word`
user_word=`echo $user_word | tr "[A-Z]" "[a-z]"`
echo "The processed user word is $user_word with length $len_word..."

vcount=0
k=1
while [ $k -le $len_word ] ; do
	char=`echo $user_word | cut -c$k`
	echo "At index $k the character is $char..."
	for vowel_char in a e i o u ; do
		if [ $char = $vowel_char ] ; then
			vcount=`expr $vcount + 1`
			break
		fi
	done
	k=`expr $k + 1`
done

ccount=`expr $len_word - $vcount`
echo -e "\nSo vowel count = $vcount and consonant count = $ccount..."

echo -e "\nEnd of the shell script...\n"
