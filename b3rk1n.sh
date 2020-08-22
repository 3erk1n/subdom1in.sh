#! /bin/bash
 
 wget -d http://www.kilis.edu.tr/   // wget -d domain.com 
 
cat index.html | grep "edu.tr" | cut -d "/" -f 3 | grep "edu.tr" | sort -u > kilis.txt 

cat  kilis.txt | cut -d "'" -f 1 | grep .edu.tr > subkilis.txt


rm -r kilis.txt
rm -r index*

echo 'I FOUND THE SUBDOMAINS'
cat sublist.txt
