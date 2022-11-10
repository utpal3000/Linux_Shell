# CLASS WORK - 3 (Day-2)
# ======================
# Printing first n numbers of Fibonacci Series
# Get n as the command line argument
# Fibonacci numbers:
#    index =>  1  2  3  4  5  6  7  8  9 10
#  numbers =>  0  1  1  2  3  5  8 13 21 34 ...

n=$1 # reading the command line arguments into the variable n
echo "So we are printing first $n Fibonacci numbers..."
f1=0
if [ $n -ge 1 ] ; then
	echo -n "$f1, "
fi
f2=1
if [ $n -ge 2 ] ; then
	echo -n "$f2, "
fi
place_no=3
while [ $place_no -le $n ] ; do
	f3=`expr $f1 + $f2`
	echo -n "$f3, "
	f1=$f2
	f2=$f3
	place_no=`expr $place_no + 1`
done
echo -e "\n\nEnd of the program...\n"
