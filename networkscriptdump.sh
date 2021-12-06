# Anthony Ventura
#12/04/2021
#!/bin/bash
echo "would you like to see the network settings of the server(type y/n to proceed to the netwrk settings)"
read input 
if [[ $input == y ]]; then # This is a if statement to collect the answer of the user Y/N
ip address  # this would show the ip address, mac address and  defaul gateway
ip address >> netscript # this command is telling to save the results in tha file 
fi # this is teeling to end tha block of the script 

echo "would you like to see the reporting ports and connection status pf the server (type y if you would like to proceed)"
read input
if [[ $input == y ]]; then 
netstat -an  # This would search the ports of the server 
netstat -an  >> netscript # this would save it to the file 
fi

echo "would you like to see the  routing table  of the server ( type y/n ) to continue "
read input
if [[ $input ]]; then
ip route # This command would show the routing table 
ip route >> netscript # this would save it to the file 
fi

echo " would you like to see the domains of servers (type y/n) to continue"
read input
if [[ $input == y ]]; then 
echo "enter the domain"
read answer # to collect the domain name
 nslookup $answer # this would run the nslookup command  search your domain name that you entered
 nslookup $answer >> netscript # this would svae the results in the file 
fi 



