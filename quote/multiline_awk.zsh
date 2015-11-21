#!/usr/bin/zsh -x
#This script counts how many people
# are in the group specified as the first argument
grp=${1:?"Missing argument"}	# get group ID number
# If missing, report an error and exit.
awk -F: '
# Awk script starts here
BEGIN {
	# set total to zero 
	#   before we start
	total=0;	
}
$3 ~ /^'$grp'$/ {total++;} 
END {
	# end of file, print total
	printf("Total: %d\n", total);
}' </etc/passwd
