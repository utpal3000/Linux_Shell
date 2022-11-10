# Upper case to lower case conversion and vice versa
mystr="stANforD uNIveRSitY"
echo -e "\nThe original string is $mystr..."

mystr_upper=`echo $mystr | tr "[a-z]" "[A-Z]"`
echo -e "\nThe string in the upper case is: $mystr_upper..."

mystr_lower=`echo $mystr | tr "[A-Z]" "[a-z]"`
echo -e "\nThe string in the lower case is: $mystr_lower..."

echo -e "\nEnd of the shell script...\n"
