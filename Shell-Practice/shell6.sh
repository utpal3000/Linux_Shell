# Experiments with expr
a=100
b=20
c=500

# result = ((100 * 20) + 500) = 2500
result=`expr \( \( $a \* $b \) + $c \)`
echo "So the final result is $result..."
result=$(((a * b) + c))   # bash syntax
echo "So the final result is $result..."
result=$((($a * $b) + $c))   # bash syntax
echo "So the final result is $result..."
 
date_variable=`date`
echo "So date_variable = $date_variable..."
date_variable=$(date)
echo "So date_variable = $date_variable..."

var1=100
echo ${var2:-$var1}  # will print 100 as var2 was not initialized

var1=111
var2=222
echo ${var2:-var1}  # will print 222 as var2 was pre-initialized
# ternary operator
# Operators classifications: Unary, Binary and Ternary
# Unary: Operator will have one operand, example: +10, -100
# Binary: Operator will have two operands, example: 100 + 40
# Ternary: Operator will have three operands, example: (a<b?100:200) in Java

echo "End of the program..."



