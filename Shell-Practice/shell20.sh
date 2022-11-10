# Checking the existence of a file and its file type
# dealing with the file types if the file exists and display the appropriate messages
# take the filename from command line argument
fname=$1
echo -e "\nSo the given file name is: $fname...\n"
if [ -e $fname ] ; then  # -e => if exists?
	echo "$fname is existing..."
	if [ -f $fname ] ; then
		echo "$fname is an ORDINARY file..."
		read_perm=`ls -l $fname | cut -c2`
		if [ $read_perm = "r" ] ; then
			echo "$fname has the READ Permission ON..."
		else
			echo "$fname has the READ Permission OFF..."
		fi
		write_perm=`ls -l $fname | cut -c3`
		if [ $write_perm = "w" ] ; then
			echo "$fname has the WRITE Permission ON..."
		else
			echo "$fname has the WRITE Permission OFF..."
		fi
		execute_perm=`ls -l $fname | cut -c4`
		if [ $execute_perm = "x" ] ; then
			echo "$fname has the EXECUTE Permission ON..."
		else
			echo "$fname has the EXECUTE Permission OFF..."
		fi
	elif [ -L $fname ] ; then  # put this check before directory check
		echo "$fname is an LINK Special file..."
	elif [ -d $fname ] ; then
		echo "$fname is a DIRECTORY file..."
	elif [ -c $fname ] ; then
		echo "$fname is a CHARACTER Special file..."
	elif [ -b $fname ] ; then
		echo "$fname is a BLOCK Special file..."
	fi
else
	echo "$fname is NOT existing..."
fi

echo -e "\nEnd of the shell script...\n"

# for block special file check with /dev/loop0
# for directory file check with /dev/cpu
# for character special file check with /dev/console
# for link special file check with /dev/fd
# for ordinary file check with /home/ubuntu/shellprog/shell1.sh

