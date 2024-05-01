#!/bin/bash

echo "Enter the filename:"
read filename
touch $filename

echo -e "\n$filename created successfully."

echo -e "\nEnter content into the file. Press Ctrl+D to save:"
cat > $filename

echo -e "\nContent of $filename:"
cat $filename

echo -e "\nWord count of $filename:"
wc $filename

echo -e "\nContent of $filename in sorted order:"
sort $filename

echo -e "\nContent of $filename in uppercase:"
cat $filename |tr 'a-z' 'A-Z'

echo -e "\nEnter the number of lines to dsiplay:"
read num
echo "First $num lines of $filename:"
head -n $num $filename

echo -e "\nEnter keyword to search:"
read key
echo "Lines in $filename is:"
grep "$key" $filename

echo -e "\nEnter new filenme to rename $filename:"
read new_file
mv $filename $new_file
echo "File renamed to: $new_file."

echo -e "\nEnter the cut position:"
read cut
echo "Content after cutting at position $cut:"
cut -c $cut  $new_file

echo -e "\nEnter the filename to delete:"
read del
rm $del
echo "File $del deleted successfully."
