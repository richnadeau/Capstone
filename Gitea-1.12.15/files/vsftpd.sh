#! /bin/bash

mkdir /var/ftp
mkdir /var/ftp/pub
echo “Hello Arwen, here is your username and password. Make sure to change them after the first login” > /var/ftp/pub/backup.txt
echo “ “ >> /var/ftp/pub/backup.txt
echo “username: arwen” >> /var/ftp/pub/backup.txt
echo “password: Passw0rd#123” >> /var/ftp/pub/backup.txt
