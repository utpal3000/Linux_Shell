# (CLASS WORK - 2 (Day-4))
# ------------------------
# Find total file count, maximum, minimum, total and average of all file sizes of all files in the current folder

flag=1
for fsize in `ls -l | cut -c27-31` ; do
	# echo -n "$fsize, "
	if [ $flag -eq 1 ] ; then
		total_size=$fsize
		max_size=$fsize
		min_size=$fsize
		file_count=1
		flag=0
	else
		if [ $fsize -gt $max_size ] ; then
			max_size=$fsize
		fi
		if [ $fsize -lt $min_size ] ; then
			min_size=$fsize
		fi
		file_count=`expr $file_count + 1`
		total_size=`expr $total_size + $fsize`
	fi
done
echo -e "\nSo the number files in current directory is $file_count..."
echo "So the maximum file size is $max_size..."
echo "So the minimum file size is $min_size..."
echo "So the total file size is $total_size..."
average_size=`echo "scale=4; ( $total_size / $file_count)" | bc`
echo "So the average file size is $average_size..."

echo -e "\nEnd of the shell script...\n"

