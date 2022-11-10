# How to setup cron job in Ubuntu?

# The cron software is a time-based job scheduler in Unix/Linux operating system.
# Cron allows Linux and Unix users to run commands or scripts at a pre-scheduled dates and times.
# Once scheduled, scripts can be executed periodically.
# It is usually used by system admin such for backups or cleaning /tmp files and directories and for many more purposeful automation activities.

# The following is the list of commands required to setup and run our cron jobs -

sudo apt-get update     # connect to the Ubuntu server and update the system
sudo apt-get upgrade    # optional to upgrade your system it is not

sudo dpkg --configure -a # requires only when 'sudo apt-get upgrade' asks us to do
dpkg -l cron            # to check whether cron is already present or not

sudo apt-get install cron # if cron is not pre-installed
systemctl status cron   # to check the status of cron where active or not
sudo systemctl start cron  # only when cron is not active or running

sudo crontab -l        # to list all cron jobs listed for the current user
sudo crontab -r        # to remove all cron jobs running for the current user
sudo crontab -e        # to add new or edit cron jobs for the current user

# cron job listing format -
# minute hour date monthno dayno command
# * minute [0-59]
# * hour [0-24] 24 hour means 0 hour
# * date [1-31]
# * monthno [1-12]
# * dayno [0-7] where both 0 and 7 denote Sunday
# * command this is the command to be executed

# Sample cron tab registration as -
# 20 1 * * * command => At 1:20 am job has been scheduled for each day
# 0,14,29,44 * * * * command => At minutes 0, 14, 29, and 44 the job has been scheduled for each day
# 0 11 * 1-6 * command => At 11 am on each month on 1 to 6 dates the job has been scheduled
# 40 2 26 12 * command => At 2:40 am of 26th December job has been scheduled
# 55 12 14 10 * /bin/bash /home/ubuntu/shellprog/shell51.sh > /dev/pts/0

# issue the command 'tty' at the command prompt to check and get the working terminal

