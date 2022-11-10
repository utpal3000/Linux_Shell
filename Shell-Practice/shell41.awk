# Creating text report using awk command
# this awk script will read 6 student names and along with 5 subject marks for each student from a data file and shall print a report with all details and with additional information of total, average and grade for each student.

BEGIN {printf "\n\t\tResult for the students of Class XII (A)"
  printf "\n\t\t----------------------------------------"
  printf ("\n%8s %6s %6s %6s %6s %6s %6s %5s %8s", "NAME", "MARKS1", "MARKS2", "MARKS3", "MARKS4", "MARKS5", "TOTAL", "AVERAGE", "GRADE")
printf "\n---------------------------------------------------------------------"
}
{
	total = ($2 + $3 + $4 + $5 + $6)
	average = total/5
	if (average <= 40)
		grade = "Grade-C"
	else if (average <= 60)
		grade = "Grade-B"
	else
		grade = "Grade-A"
	
	printf "\n%8s %6d %6d %6d %6d %6d %6d %5.2f %10s", $1, $2, $3, $4, $5, $6, total, average, grade
}
END {
printf "\n---------------------------------------------------------------------\n\n"
}

# to run the code issue the command:
# awk -f shell41.sh student_marks.dat 
# awk -f shell41.awk student_marks.dat 


