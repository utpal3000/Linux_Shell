# CLASS WORK - 1 (Day-2)
# ======================
# Series related problem
# total = 1 + 2 + 3 + 4 + 10 + 5 + 6 + 7 + 8 + 26 + 9 + 10 ... n terms
#         1   2   3   4   5    6   7   8   9   10   11  12
# Take n from the user input and find the sum of first n terms of the series.
# for n = 10, total = 72
# for n = 4, total = 10
# What is the 99th term of the series?
#
# Algorithm (Pseudocode):
# -----------------------
# input n
# tsum = 0; fsum = 0; term = 1
# for i = 1 to n step 1
#     if (i mod 5 == 0) then
#         fsum += tsum
#         tsum = 0
#     else
#         fsum += term
#         tsum += term
#         term ++
#     end if
# end for
# print fsum
# end
# Implement this algorithm (Pseudocode) in shell script
echo -n "Please enter the number of terms: "
read n
tsum=0
fsum=0
term=1
for ((i = 1; i <= n; i++ )) ; do
    if ((( i % 5 ) == 0)) ; then
        fsum=$(( fsum + tsum))
        echo "Adding the temporary sum: $tsum with $fsum..."
        tsum=0
    else
        fsum=$((fsum + term))
        tsum=$((tsum + term))
        echo "Adding the term: $term with $fsum..."
        term=$((term + 1))
    fi
done
echo -e "\nSo the final sum of the series is $fsum..."
echo -e "\nEnd of the program...\n"


