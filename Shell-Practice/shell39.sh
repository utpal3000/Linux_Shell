# Dealing with the sed command
# sed stands for Stream Editor

# sed is a multipurpose tool which combines the work of several filters. It is derived from ed, the original Unix editor.
# sed performs non-interactive operations on a data stream - hence its name.
# It uses very few options but has lots of features that allow us to select lines and run instructions on them. Learning sed will prepare us well for the Perl programming which uses many of its features.

# print the first 3 records (rows) and then quit (q)
sed '3q' emp.lst
sed '3q' emp1.lst
# same as
cat emp.lst | head -3
head -3 emp.lst

cat emp1.lst | head -3
head -3 emp1.lst

# print (p) records within start and end record numbers mentioned
sed -n "1,2p" emp.lst   # p stands for print
sed -n "1,2p" emp1.lst

sed -n "4,7p" emp.lst
sed -n "4,7p" emp1.lst

sed -n "2,6p" emp.lst
sed -n "2,6p" emp1.lst

# print from start record number to the last ($) record number as mentioned
sed -n '$p' emp.lst
sed -n '$p' emp1.lst

sed -n '8,$p' emp.lst
sed -n '8,$p' emp1.lst

sed -n '10,$p' emp.lst
sed -n '10,$p' emp1.lst

# print other than 3,$ records, Here ! denotes negation.
sed -n '3,$!p' emp.lst
sed -n '3,$!p' emp1.lst
# the above command is producing outputs same as below command
sed -n '1,2p' emp.lst
sed -n '1,2p' emp1.lst

# print multiple discrete ranges of records using -e option
sed -n -e '1,2p' -e '7,9p' -e '$p' emp.lst
sed -n -e '1,2p' -e '7,9p' -e '$p' emp1.lst

# it is also known as 'context addressing'. It prints records matching with patterns
sed -n '/director/p' emp.lst
sed -n '/director/p' emp1.lst

# using regular expressions
sed -n '/[aA]gg*[ar][ar]wal/p' emp.lst
sed -n '/[aA]gg*[ar][ar]wal/p' emp1.lst
sed -n '/sa[kx]s*ena/p' emp.lst
sed -n '/sa[kx]s*ena/p' emp1.lst

# g* => means no 'g' or multiple number of 'g' characters
# g+ => means atleast one 'g' or multiple number of 'g' characters
# * => means any substring including null
# . => means any one character
# a? => means either a single 'a' or no 'a'

