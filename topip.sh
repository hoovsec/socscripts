#!/bin/bash
filename=$1
if [[ -n "$filename" ]]; then
sed 's/,/ /g' $filename > newfile1.txt
sed 's/"/ /g' newfile1.txt > newfile2.txt
cat newfile2.txt | awk '{print $1}' | grep -v dest > tempiplookup.txt
for i in $(cat tempiplookup.txt); do
	host $i
	host $i >> topIP_DNS.txt
done
# rm $filename
rm newfile1.txt
rm newfile2.txt
rm tempiplookup.txt
else
	echo "invalid filename to act on"
fi
