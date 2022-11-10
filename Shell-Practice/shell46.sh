# Find out the number of vowels and consonants in a user given sentence

echo -n "Please enter your sentence: "
read user_sentence

len_sentence=`echo $user_sentence | wc -c`
user_sentence=`echo $user_sentence | tr "[A-Z]" "[a-z]"`
echo "The processed user sentence is $user_sentence with length $len_sentence..."

vcount=0
ccount=0
k=1
while [ $k -lt $len_sentence ] ; do
	char=`echo $user_sentence | cut -c$k`
	if [ ! -z $char ] ; then
		echo "At index $k the character is $char..."
		flag=0
		for all_char in `cat alphabet.txt` ; do
			if [ $all_char = $char ] ; then
				for vowel_char in a e i o u ; do
					if [ $char = $vowel_char ] ; then
						vcount=`expr $vcount + 1`
						flag=1
						break
					fi
				done
				if [ $flag -eq 0 ] ; then
					ccount=`expr $ccount + 1`
				fi
				break
			fi
		done
	fi
	k=`expr $k + 1`
done

echo -e "\nSo vowel count = $vcount and consonant count = $ccount..."

echo -e "\nEnd of the shell script...\n"

# CHArity beGINs at hoMe

