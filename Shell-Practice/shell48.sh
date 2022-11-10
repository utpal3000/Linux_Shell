# Shell script how to clean log files in Linux (Option - 1)

# OPTION - 1
# ----------
# check the disk space from the command line. Use the command 'du' to check which files and directories are consuming the most space inside the folder '/var/log'. Here is the full command -
du -h /var/log
# Here the -h option stands for information in a human-readable format

sudo su - root
cd /

ls -lS /var/log | more  # file list in the descending order of the file size

cp /var/log/dpkg.log.1 /var/log/mylogfile
cd /var/log
du -h *

# now to make the mylogfile content empty
# use the cat command to empty the log files or directories
cat /dev/null > /var/log/mylogfile
# as an alternative we can also issue the following command to make the /var/log/mylogfile empty is
# >/var/log/mylogfile
cd /var/log
du -h *
ls -lS /var/log



