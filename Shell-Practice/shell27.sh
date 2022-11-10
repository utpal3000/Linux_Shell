# List those usernames logged out or logged in in the last 15 seconds

# group1: user11, user12, user13, user14
# group2: user21, user22, user23
# group3: user31, user32

# a.txt (user11)
# rwx (User (u)) -> user11
# rwx (Group (g)) -> user12, user13, user14
# rwx (Others (o)) -> user21, user22, user23, user31, user32

# for relative permission change with chmod command:
# u -> user, g -> group, o -> other, a -> all (ugo)

# Section - 1: Relative change of permissions
# chmod u+x a.txt
# chmod a+x a.txt
# chmod a-x a.txt

# Section - 2: Absolute change of permissions
# chmod 777 a.txt -> rwxrwxrwx
# chmod 567 a.txt -> r-wrw-rwx
# chmod 123 a.txt -> --x-w--wx

# man groupadd
# sudo groupadd --gid 1006 student
# cat /etc/group
# man useradd
# sudo useradd -d /home/user1 -g student -s /bin/bash -u 2001 user1
# sudo useradd -d /home/user2 -g student -s /bin/bash -u 2002 user2
# sudo useradd -d /home/user3 -g student -s /bin/bash -u 2003 user3
# cat /etc/passwd
# id user1
# id user2
# id user3
# cat /etc/passwd | grep -iE "user1|user2|user3"
# sudo passwd user1
# sudo passwd user2
# sudo passwd user3
			

# ctrl+alt+F2 => main colsole (/dev/pts/0)
# ctrl+alt+F3 => virtual terminal-1 (/dev/tty3)
# ctrl+alt+F4 => virtual terminal-2 (/dev/tty4)

# who => Who have logged till now
# whoami => Display the user name
# tty => Display the console name

clear
echo "The shell script is running..."
>whoold.dat   # creating the empty file
while true ; do
	who | cut -d" " -f1 | sort > whonew.dat
	for user in `comm -13 whoold.dat whonew.dat` ; do
		echo "$user has logged in..."
	done
	for user in `comm -23 whoold.dat whonew.dat` ; do
		echo "$user has logged out..."
	done
	cat whonew.dat > whoold.dat
	echo "-------------------------------------------"
	sleep 10   # sleep for 15 seconds
done

# check running processes using commands 'ps -f' or with 'ps -ef | grep pts/0' from another terminal
# to kill the running shell script use command 'kill -9 PID', where PID is the PID of the running shell script

