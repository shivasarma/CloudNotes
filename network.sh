## TODO: 
#	--> Check Public IP
#	--> Save to a file
#	--> Compare & post it is different
#	--> NMAP Network
#	--> list all users
#	--> Post if it is different

## Algorithm

# Create two files;
# inject IP into one file
# compare the two files
# cp the first file to second file

#Checking public ip and saving it to a variable
set x = dig +short myip.opendns.com resolver1@myip.opendns.com
set y = cat past_ip

if [ $x -ne $y ]
	then
		echo $x | mail -s "IP Changed" shivatracks@gmail.com
fi

echo $x > ip






