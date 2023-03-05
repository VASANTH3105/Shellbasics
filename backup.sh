#!/bin/bash

# [TASK 1]
targetDirectory=$1
destinationDirectory=$2

# [TASK 2]
echo "The value of targetDirectory is $targetDirectory"
echo "The value of destinationDirectory is $destinationDirectory"

# [TASK 3]
currentTS=$(date +%s)
echo "The current timestamp is $currentTS"

# [TASK 4]
backupFileName="backup-$currentTS.tar.gz"
echo "The name of the backup file is $backupFileName"

# [TASK 5]
origAbsPath=$(pwd)
echo "The absolute path of the current directory is $origAbsPath"

# [TASK 6]
cd "$destinationDirectory"
destAbsPath=$(pwd)
echo "The absolute path of the destination directory is $destAbsPath"

# [TASK 7]
cd "$origAbsPath/$targetDirectory"
echo "Changed directory to $targetDirectory"

# [TASK 8]
yesterdayTS=$(($currentTS - 24 * 60 * 60))

# [TASK 9]
for file in $(ls); do

# [TASK 10]
file_last_modified_date=$(date -r "$file" +%s)
if [[ $file_last_modified_date -gt $yesterdayTS ]]; then
   echo "$file was modified within the last 24 hours."
fi

# [TASK 11]
if [[ `date -r $file +%s` -gt $yesterdayTS ]]; then
  toBackup+=($file)
fi


# Task 12
tar -czvf $backupFileName ${toBackup[@]}
echo "Backup created: $backupFileName"

#13
mv $backupFileName $destAbsPath

