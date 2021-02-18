#!/bin/bash
directory=~/NetBeansProjects/
list=`ls ~/Downloads/*.zip 2> /dev/null`

mv "$list" "$directory" 2> /dev/null
if [ $? -eq 0 ]
then
    echo "File move"
else
    echo "No such file"
fi


unzip -q "$directory${list##*[/]}" -d "$directory" 2> /dev/null
if [ $? -eq 0 ]
then
    echo "To extract the files"
else
    echo "Error to extract"
fi

rm "$directory${list##*[/]}" 2> /dev/null
if [ $? -eq 0 ]
then
    echo "Remove .zip"
else
    echo "Error to remove"
fi