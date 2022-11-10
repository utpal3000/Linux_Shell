# Sorting of array elements using Bubble Sort algorithm
# Tracing of Bubble Sort algorithm logic is shown below -
#  index ->   1   2   3   4   5
# values ->  55  44  33  22  11                                    n = 5
#            ------                                            pass (i)  #comparisons (j)
#            44  55  33  22  11                              ------------------------------
#                ------                                           1      4   i => for i = 1 to (n - 1)
#            44  33  55  22  11                                   2      3   j => (n - i)
#                    ------                                       3      2
#            44  33  22  55  11                                   4      1
#                        ------                              ------------------------------
#            44  33  22  11  55
#            ------
#            --------------------------------- End of Pass-1 
#            33  44  22  11  55
#                ------
#            33  22  44  11  55
#                    ------
#            33  22  11  44  55
#            ------
#            --------------------------------- End of Pass-2
#            22  33  11  44  55
#                ------
#            22  11  33  44  55 
#            ------
#            --------------------------------- End of Pass-3
#            11  22  33  44  55
#            --------------------------------- End of Pass-4
# 
# 
# Bubble Sort Algorithm:
# ---------------------- 
# for i = 1 to (n - 1)
# 	 for j = 1 to (n - i)
#    	if ( a[j] > a[j + 1] ) then
# 			temp = a[j]
#      		a[j] = a[j + 1]
#     		a[j + 1] = temp
# 	    end if
#    end for
# end for
# 

echo -n "Plese enter the number of elements: "
read n
echo -e "\nInitializing the content of the array..."
i=1
while [ $i -le $n ] ; do
	echo -ne "\tPlease enter element for the index $i: "
	read a[$i]
	i=`expr $i + 1`
done

echo -e "\nDisplaying the content of the unsorted array..."
i=1
while [ $i -le $n ] ; do
	echo -e "\tIndex Number: $i and content: ${a[$i]} and content: $((a[i]))..."
	i=`expr $i + 1`
done

echo -e "\nPerforming the Bubble Sort operation..."
for (( i = 1; i <= (n - 1); i++ )) ; do
	for (( j = 1; j <= (n - i); j++ )) ; do
		if (( a[j] > a[j + 1] )) ; then
			temp=$((a[j]))
     		a[j]=${a[j + 1]}
    		a[j + 1]=$temp
		fi
	done
done

echo -e "\nDisplaying the content of the sorted array..."
i=1
while [ $i -le $n ] ; do
	echo -e "\tIndex Number: $i and content: ${a[$i]} and content: $((a[i]))..."
	i=`expr $i + 1`
done

echo -e "\nEnd of the shell script...\n"


