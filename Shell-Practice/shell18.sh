# Dealing with the command line arguments
echo "So total number of command line arguments passed is: $#..."
echo "So all the arguments in a string is: $@..."
echo "So all the arguments in a string is: $*..."
echo "Current process ID number is: $$..."
ps -f
echo ""
echo "$0, $1, $2, $3, $4, $5"
echo $0 $1 $2 $3 $4 $5
echo ""
shift
echo "After first shift command execution..."
echo "So total number of command line arguments passed is $#..."
echo "All command line arguments in a string is: $*..."
echo $0 $1 $2 $3 $4 $5
echo ""
shift
echo "After second shift command execution..."
echo "So total number of command line arguments passed is $#..."
echo "All command line arguments in a string is: $*..."
echo $0 $1 $2 $3 $4 $5
echo ""
shift
echo "After third shift command execution..."
echo "So total number of command line arguments passed is $#..."
echo "All command line arguments in a string is: $*..."
echo $0 $1 $2 $3 $4 $5
echo ""
shift
echo "After fouth shift command execution..."
echo "So total number of command line arguments passed is $#..."
echo "All command line arguments in a string is: $*..."
echo $0 $1 $2 $3 $4 $5
echo ""
shift
echo "After fifth shift command execution..."
echo "So total number of command line arguments passed is $#..."
echo "All command line arguments in a string is: $*..."
echo $0 $1 $2 $3 $4 $5

echo -e "\nEnd of the program...\n"


# $$ -> to print current process ID number
# $# -> number of command line arguments excluding $0 i.e. the file name itself
# $@, $* -> to print all command line arguments as a string excluding the file name
# $1, $2 ... -> command line arguments passed
# $? => return value from a command or from a function, where 0 return value denotes command has succeeded and 1 denotes command has failed


