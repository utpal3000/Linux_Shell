# Pattern printing - 2
# 
# n = 6 (User given input)
#               i   .   *
#             -------------
# ***********   1   0  11       (i, n)
# .*********    2   1   9  . => (i - 1)
# ..*******     3   2   7
# ...*****      4   3   5  * => (2 * (n - i) + 1)
# ....***       5   4   3
# .....*        6   5   1
#             -------------
#             Tracing Table
# 
# Implementation of the logic
echo -e "Please enter the number of layers of the pattern: \c"
read n
i=1
while (( i <= n )) ; do	
	blank=$((i - 1))
	j=1
	while (( j <= blank )) ; do
		echo -n "."
		j=$((j + 1))
	done
	star=$((2 * (n - i) + 1))
	j=1
	while (( j <= star )) ; do
		echo -n "*"
		j=$((j + 1))
	done
	echo ""
	i=$((i + 1))
done

echo -e "\nEnd of the program..."
