# Script Name: event_code.sh
# Date: 06-02-2017
# Set Script Working Dir:
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
clear
echo Enter The Event Code:
read code
echo 
echo 
echo Enter The Sub Code:
echo Example: 6A - case sensitive
read sub
echo 
echo 
clear
echo Code Description:
search=$(grep $code $dir/event_code.sh | grep $sub)
echo $search
echo 
echo 
echo Copy Pasta:
paste=$(echo $search | cut -d " " -f3-20)
echo The most recent event code $code and subcode $sub indicates the $paste.
echo 
echo 
exit
# Codes
Code Subcode            Description
==========================================================================
4625 0xC0000064 	user name does not exist
4625 0xC000006A 	user name is correct but the password is wrong
4625 0xC0000234 	user is currently locked out
4625 0xC0000072 	account is currently disabled
4625 0xC000006F 	user tried to logon outside his day of week or time of day restrictions
4625 0xC0000070 	workstation restriction, or Authentication Policy Silo violation (look for event ID 4820 on domain controller)
4625 0xC0000193 	account expiration
4625 0xC0000071 	expired password
4625 0xC0000133 	clocks between DC and other computer too far out of sync
4625 0xC0000224 	user is required to change password at next logon
4625 0xC0000225 	evidently a bug in Windows and not a risk
4625 0xc000015b 	The user has not been granted the requested logon type (aka logon right) at this machine
4776 C0000064   user name does not exist
4776 C000006A   user name is correct but the password is wrong
4776 C0000234   user is currently locked out
4776 C0000072   account is currently disabled
4776 C000006F   user tried to logon outside his day of week or time of day restrictions
4776 C0000070   workstation restriction
4776 C0000193   account expiration
4776 C0000071   expired password
4776 C0000224   user is required to change password at next logon
4776 C0000225   evidently a bug in Windows and not a risk
