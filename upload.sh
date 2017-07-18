#!/bin/sh
pwd="password"
fold=$(date +%Y%m%d) #папка с текущей датой
sshpass -p 'password' sftp user@192.168.1.1:/server/remote <<!
 put -r /local/directory/OPR/$fold/file.csv
 rename file_local.csv file_$fold.csv #добавляем к файлу на сервере дату
 quit
!
