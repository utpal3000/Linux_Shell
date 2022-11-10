# Dealing with echo and escape sequence characters
# This is a comment line...
# In shell script all comment lines will start with # symbol...
echo "Welcome to the World of Shell Scripting..."
echo "Shell Scripting in Ubuntu environment..."
echo -e "\nThis is a vertical tab\vhere..."
echo -e "\n\t\tThis line contains escape sequence characters..."
echo -e "\n\n\t\tThis line is within double quotes..."
echo -e '\n\n\t\tThis line is within single quotes...'
echo -e \\n\\n\\t\\tThis line is with out any quotes...


echo "End of the shell script..."


# There are multiple types of shells are available: bash, csh (sh), ksh (korn shell)
# shell stands for command interpreter
# all shells will have most of the commands same. But there are some differences iin the shell commands and syntax.
# Syntax stands for Grammar.
# The most popular and common shell is bash shell
# in path . stands for present directory or path
# in path .. stands for parent directory or path
# open the file /home/ubuntu/.profile and add a line 'PATH=$PATH:.' at the end of the .profile file and then logout and login to your system once to reflect the change in the path.
# which cd -> its output indicates that cd is an internal command
# which mkdir -> its output indicates that mkdir is an external command which is having the command file at the path /bin/mkdir
# try with the following commands to display contents in system defined variables:
# echo $SHELL
# echo $HOME
# echo $PATH








