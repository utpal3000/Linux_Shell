# Dealing with the grep command
# two datasets we shall use:
# emp.lst: Fixed width dataset
# emp1.lst: Delimited dataset, here the delimiter is "|"
# each dataset has the following field or attributes:
# emp_d, emp_name, emp_designation, emp_department, emp_doj, emp_salary

# grep is a pattern searching command and utility
# grep scans its input for a given pattern and displays lines containing the pattern, and also line numbers of the file name where the pattern exists.
# grep command syntax is: grep options patterns filename(s)

# to display all sales records
grep "sales" emp.lst
grep "sales" emp1.lst

grep 'sales' emp.lst
grep 'sales' emp1.lst

grep sales emp.lst
grep sales emp1.lst

# unsuccessful pattern searching
grep "president" emp.lst
grep "president" emp1.lst

# searching for a pattern on multiple files
grep "director" emp.lst emp1.lst

# for case insensitive searching use the option -i
grep "jai Sharma" emp.lst
grep "jai sharma" emp.lst
grep "JAI SHARMA" emp.lst

grep -i "jai Sharma" emp.lst
grep -i "jai sharma" emp.lst
grep -i "JAI SHARMA" emp.lst

grep "jai Sharma" emp1.lst
grep "jai sharma" emp1.lst
grep "JAI SHARMA" emp1.lst

grep -i "jai Sharma" emp1.lst
grep -i "jai sharma" emp1.lst
grep -i "JAI SHARMA" emp1.lst

# displaying all the records except record with designation "director"
grep -v "director" emp.lst
grep -v "director" emp1.lst

# displaying records matching with the given pattern with the line numbers
grep -n "marketing" emp.lst
grep -n "marketing" emp1.lst

# displaying the number of records with designation "director"
grep -c "director" emp.lst
grep -c "director" emp1.lst
director_count=`grep -c "director" emp.lst`
echo "So number of directors in the dataset is: $director_count..."

# searching for multiple patterns in a same grep command with option -e
grep -e "agrawal" -e "agarwal" -e "aggarwal" emp.lst
grep -e "agrawal" -e "agarwal" -e "aggarwal" emp1.lst

# grep with regular expressions
grep "[aA]g[ar][ar]wal" emp.lst
grep "[aA]g[ar][ar]wal" emp1.lst

grep "[aA]gg*[ar][ar]wal" emp.lst
grep "[aA]gg*[ar][ar]wal" emp1.lst

grep "j.*saxena" emp.lst
grep "j.*saxena" emp1.lst

grep "^2" emp.lst  # those records start with 2
grep "^2" emp1.lst  # those records start with 2

grep "7...$" emp.lst # those records having last but 4th character as 7
grep "7...$" emp1.lst

grep -E "[aA]gg?arwal" emp.lst  # her -E means extended regular expression
grep -E "[aA]gg?arwal" emp1.lst

grep -E "sengupta|dasgupta" emp.lst
grep -E "sengupta|dasgupta" emp1.lst

grep -E "(sen|das)gupta" emp.lst
grep -E "(sen|das)gupta" emp1.lst

# g* => means no 'g' or multiple number of 'g' characters
# g+ => means atleast one 'g' or multiple number of 'g' characters
# * => means any substring including null
# . => means any one character
# a? => means either a single 'a' or no 'a'

