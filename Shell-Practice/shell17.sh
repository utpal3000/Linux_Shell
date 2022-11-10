# Greetings messages depending on the hour value
hour=`date +%H`
minute=`date +%M`
echo -e "\nSo the current hour is $hour..."
if [ $hour -lt 12 ] ; then
	echo "Good Morning..."
elif [ $hour -eq 12 -a $minute -eq 0 ] ; then
	echo "Good Noon..."
elif [ $hour -ge 12 -a $hour -lt 18 ] ; then
	echo "Good Afternoon..."
elif [ $hour -ge 18 -a $hour -lt 20 ] ; then
	echo "Good Evening..."
else
	echo "Good Night..."
fi
echo -e "\nEnd of the program...\n"

# Issue these following commands at the command prompt for resetting hours
# timedatectl set-ntp no
# timedatectl set-time 23:12:51
# timedatectl set-time 19:12:51
# timedatectl set-time 14:12:51
# timedatectl set-time 08:12:51 

