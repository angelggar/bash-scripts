#!/bin/bash
directory=~/NetBeansProjects/
list=`ls ~/Downloads/*.zip 2> /dev/null`

mv "$list" "$directory" 2> /dev/null
if [ $? -eq 0 ]
then
    echo "File moved to $directory"
else
    echo "No such file"
fi


unzip -q "$directory${list##*[/]}" -d "$directory" 2> /dev/null
if [ $? -eq 0 ]
then
    echo "Files extracted"
else
    echo "Error extracting files"
fi

rm "$directory${list##*[/]}" 2> /dev/null
if [ $? -eq 0 ]
then
    echo "Removed .zip"
else
    echo "Error removing .zip"
fi