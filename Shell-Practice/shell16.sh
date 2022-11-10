# CLASS WORK - 4 (Day-2)
# ======================
# Shell script to reverse a user given number
# Algorithm (Pseudocode):
# -----------------------
# input n
# reverse_num = 0
# while ( n != 0 ) 
# 	last_digit = n % 10
#   reverse_num = reverse_num * 10 + last_digit
#   n = n / 10
# while end
# print reverse_num
# end

echo -n "Please enter one integer to be reversed: "
read n
reverse_num=0
while (( n != 0 )) ; do 
	last_digit=$(( n % 10 ))
    reverse_num=$(( reverse_num * 10 + last_digit ))
    n=$(( n / 10 ))
done
echo "So the reverse number is $reverse_num..."
echo -e "\nEnd of the program...\n"

