# User defined functions in shell script (more study and experiments)

# calling one function from another function

function_one() {
	echo "function_one() is executing..."
	function_two
}

function_two() {
	echo "function_two() is executing..."
}

# calling function_one
function_one     # remember before calling, all required functions should remain defined

function_filecount() {
	directory=$1
	count_files=$(ls $directory | wc -l)
	echo "$directory is containing $count_files number of files/directories..."
}

# calling function_filecount function
function_filecount /home/ubuntu/shellprog



