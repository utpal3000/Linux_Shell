# Pattern printing - 1
# 
# n = 11 (User given ODD input) 
# m = (n + 1) / 2 = 6
#               i   .   *
#             -------------
# .....*        1   5   1       (i, n, m)
# ....***       2   4   3  . => (m - i)
# ...*****      3   3   5
# ..*******     4   2   7  * => (2 * i - 1)
# .*********    5   1   9
# *********** __6___0__11__
# .*********    7   1   9
# ..*******     8   2   7  . => (i - m)
# ...*****      9   3   5
# ....***      10   4   3  * => (2 * (n - i) + 1)
# .....*       11   5   1
#             -------------
#             Tracing Table
# 
# Implementation of the logic
# CLASS WORK - 2 (Day-2): Until user gives odd layer number keep on taking user inputs
while [ true ] ; do
	echo -e "Please enter the ODD number of layers of the pattern: \c"
	read n
	if (( n % 2 == 1 )) ; then
		break
	fi
done
m=$(((n + 1) / 2))
for (( i = 1; i <= n; i++ )) ; do
	if (( i > m )) ; then
		blank=$((i - m))
		star=$((2 * (n - i) + 1))
	else
		blank=$((m - i))
		star=$((2 * i - 1))
	fi
	for (( j = 1; j <= blank; j++ )) ; do
		echo -n "."
	done
	for (( j = 1; j <= star; j++ )) ; do
		echo -n "*"
	done
	echo ""
done

echo -e "\nEnd of the program..."
