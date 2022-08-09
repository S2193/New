
username=username
password=password
database=your_database_name
now="$(date +'%d_%m_%Y_%H_%M_%S')"
filename="db_backup_$now".gz
backupfolder="/home/database_backup/"
fullpathbackupfile="$backupfolder/$filename"
logfile="$backupfolder/"backup_log_"$(date +'%Y_%m')".txt
echo "mysqldump started at $(date +'%d-%m-%Y %H:%M:%S')" >> "$logfile"
mysqldump --user=$username --password=$password $database > $fullpathbackupfile
echo "mysqldump finished at $(date +'%d-%m-%Y %H:%M:%S')" >> "$logfile"

echo "remove backup 5 days old" >> "$logfile"
# Delete files older than 5 days
#find $backupfolder=/* -mtime +5 -exec rm {} \;
echo "complete removing" >> "$logfile"
