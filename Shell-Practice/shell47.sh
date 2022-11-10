# Shell script to take the backup

# what to backup
backup_files="/home /var/spool/mail /etc /root /boot /opt"

# where to backup
dest="/mnt/backup"

if [ ! -e $dest ] ; then
	echo -e "\nCreating the destination folder $dest...."
	mkdir $dest
fi

# create the archive file name
day=$(date +%b-%d-%Y)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

date
hostname
echo ""

# backup the files using the command tar
tar cpzfv $dest/$archive_file $backup_files
# c: create the archive
# p: perserve permissions for the new files
# z: compress the files to reduce the size
# f: use the archive file or device ARCHIVE
# v: verbose mode, verbosely list files precessed

# print end status message
echo
echo "Backup Finished successfully..."
echo
date 

# long listing of files in $dest to check the filw sizes
ls -lh $dest   # here -h stands for human readable form

# run this shell script as a super user only
# issue the command 'sudo su - root' and login as a super user with the super user passwd
# and then execute as '/home/ubuntu/shellprog/shell47.sh'
# to change the ownership from root to ubuntu, then issue the command: chown ubuntu: shell47.sh

# to restore all the filesystem issue the following command:
# sudo tar -xvzf ubuntu-virtual-machine-Oct-14-2022.tgz
# x: extract filesystem

