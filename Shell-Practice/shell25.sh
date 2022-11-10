# CLASS WORK - 1 (Day-3)
# ----------------------
# Calendar shell script with roman month number as command line argument
# Write a shell script to modify the cal command of Linux/Unix, so that it prints the calendar of the corresponding month against the given year when the month number is given in the roman number, e.g. I, II, III, IV, ..., XII. Where I if April, II is for May and in this way XII is for March.

# So for the input 'shell25.sh X 2022' and it will generate January 2022 calendar. As if we executed the command 'cal 1 2022'

if [ $# -eq 2 ] ; then
	case $1 in
		I|i) cal 4 $2
		     ;;
		II|ii) cal 5 $2
		     ;;
		III|iii) cal 6 $2
		     ;;
		IV|iv) cal 7 $2
		     ;;
		V|v) cal 8 $2
		     ;;
		VI|vi) cal 9 $2
		     ;;
		VII|vii) cal 10 $2
		     ;;
		VIII|viii) cal 11 $2
		     ;;
		IX|ix) cal 12 $2
		     ;;
		X|x) cal 1 $2
		     ;;
		XI|xi) cal 2 $2
		     ;;
		XII|xii) cal 3 $2
		     ;;
		*) echo "Please check your command line arguments passed..."
		   echo "USAGE: shell25.sh nomth_no_in_roman year_no"
		   echo "Try Again...!!!"
	esac
elif [ $# -eq 1 ] ; then
	cal $1
else
	echo "Invalid number of arguments have been provided..."
	echo "USAGE: shell25.sh nomth_no_in_roman year_no"
	echo "Try Again...!!!"
fi

echo -e "\nEnd of the shell script...\n"

