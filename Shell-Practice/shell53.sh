# Using shell script to automate linux maintenance task (with color codes)
# Writing a script to display system information

# To implement color codes consider the following text:
# Search on Google for "shell script color codes" and select the url "https://misc.flogisoft.com/bash/tip_colors_and_formatting".
# 31-FG-Red, 33-FG-Yellow, 43-BG-Yellow, 41-BG-Red, 103-BG-Light Yellow, 5-FG-Blink
# echo -e "\e[COLOR1;COLOR2m<YOUR TEXT HERE>\e[0m" called Ansi VT-100 control sequence
# Where COLOR1 and COLOR2 are foreground and background colors respectively and <YOUR TEXT HERE> is the string that we want to show in the specified color format

# This shell script will return the following information:

# -Host Information
echo -e "\e[1;5;31;103m***************************** HOSTNAME INFORMATION *****************************\e[0m"
hostnamectl
echo ""

# -Free and used memory in the system
echo -e "\e[5;31;102m********************** FREE AND USED MEMORY IN THE SYSTEM **********************\e[0m"
free
echo ""

# -System uptime and load
echo -e "\e[5;31;106m**************************** SYSTEM UPTIME AND LOAD ****************************\e[0m"
uptime
echo ""

# -Logged-in users
echo -e "\e[5;31;105m******************************* LOGGED-IN USERS ********************************\e[0m"
who
echo ""

# -Top 6 processes running
echo -e "\e[5;31;46m*********************** TOP 5 MEMORY CONSUMING PROCESSES ***********************\e[0m"
ps | head -6
echo ""

echo -e "\nEnd of the shell script...\n"










