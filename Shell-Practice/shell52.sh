# Generating HTML page from emp.lst file
# following shell script will display emp.lst records in one HTML table

my_dir=./
# CSS => Cascading Style Sheet
# this CSS code will format the look and feel of the coutput HTML table
echo "
<html>
	<head>
		<style> .mystyle{font-size:1em; color:yellow; background:green; padding:0.1em 0.2em;}
		table {
			border=collapse:collapse;
		}
		table, td, th {
			border:1px solid black;
			color:yellow;
			background:#7b241c;
		}
		</style>
	</head>
	<body>" > $my_dir/emplist.html
	echo "<h1>Displaying Employee Details:</h1><br>" >> $my_dir/emplist.html
	echo "<table>
	<tr><th class="mystyle">EMP NO</th>
	    <th class="mystyle">EMP ID</th>
	    <th class="mystyle">EMP NAME</th>
	    <th class="mystyle">DESIGNATION</th>
	    <th class="mystyle">DEPARTMENT</th>
	    <th class="mystyle">DOJ</th>
	    <th class="mystyle">SALARY</th>
	    <th class="mystyle">TDS</th></tr>" >> $my_dir/emplist.html
	emp_no=1
	while read record ; do
		emp_code=`echo $record | cut -d"|" -f1`
		emp_name=`echo $record | cut -d"|" -f2`
		emp_desig=`echo $record | cut -d"|" -f3`
		emp_dept=`echo $record | cut -d"|" -f4`
		emp_doj=`echo $record | cut -d"|" -f5`
		emp_salary=`echo $record | cut -d"|" -f6`
		emp_tds=`echo $emp_salary \* 7.5 / 100 | bc`
		# echo "$emp_code, $emp_name, $emp_desig, $emp_dept, $emp_doj, $emp_salary, $emp_tds..."
		echo "<tr><td align='center'>" >> $my_dir/emplist.html
		echo $emp_no >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_code >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_name >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_desig >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_dept >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_doj >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_salary >> $my_dir/emplist.html
		echo "</td><td align='center'>" >> $my_dir/emplist.html
		echo $emp_tds >> $my_dir/emplist.html
		echo "</td>" >> $my_dir/emplist.html
		emp_no=`expr $emp_no + 1`
	done < <(cat emp.lst)
	echo "</table></body></html>" >> $my_dir/emplist.html
	    
echo -e "\nHTML file has been created successfully...\n"	    
	    

