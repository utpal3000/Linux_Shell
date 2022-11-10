# Shell script how to clean log files in Linux (Option - 2)
# USAGE: cleanup_old_logs path_to_folder number_of_days
# Remove all log files in the directory older than a certain number of days

# Option - 2
# ----------
FOLDER=$1
N_DAYS=$2

# Validate
if [ $FOLDER == "" ] || [ $N_DAYS == "" ] ; then
	echo "USAGE: $0 path_to_folder number_of_days"
	exit 1
fi
if [ ! -d $FOLDER ] ; then
	echo "$FOLDER is not a valid directory..."
	exit 2
fi

# Remove
echo "Deleting files from the path $FOLDER older than $N_DAYS days..."
find $FOLDER/* -mtime +$N_DAYS -exec rm -i {} \;
echo -e "\nCleaning process has been completed successfully..."

# To execute, issue the following set of commands
# sudo su - root
# cd /
# mkdir /mytemp
# cp -r /tmp/* /mytemp
# /home/ubuntu/shellprog/shell49.sh /mytemp 1

