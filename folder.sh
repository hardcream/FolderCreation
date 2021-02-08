#!/bin/bash

ARRAY=( "6" "7" "8" "11" "12" "15" "16" )

for i in "${ARRAY[@]}"; do
	
	echo Checking folders folder_"$i"/folder_"$i"
	CHK_FOLDER=/Path/to/Dir/
		
CHK_SUBFOLDER="$CHK_FOLDER"/Example
if [[ -d "CHK_SUBFOLDER" && -d "CHK_SUBFOLDER"/SubExample ]]; then
	echo Example and SubExample folders already exist
	echo No further action needed!
		
elif [[ ! -d "$CHK_SUBFOLDER" && ! -d "$CHK_SUBFOLDER"/SubExample ]]; then
	echo Example and SubExample folder  does not exist
	echo Creating Example and SubExample folders
	sleep 2
	cd "$CHK_FOLDER"
	mkdir -p Example/{SubExample}
	sleep 1
	echo Folders have been created

else
	echo Something went wrong!
	echo Maybe the apprentice messed up :thinking: 

fi
done
