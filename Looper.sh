#!/bin/bash
for year in {2011..2020}; do
	mkdir $year
	echo $year Folder created.
	cd $year
	sudo cp "/mnt/f/Test/Sources/AK House of Representatives - Journals ($year).txt" "/mnt/f/Test/AK - House of Representatives/Journals/$year"
	echo $year text file copied.
	mv "AK House of Representatives - Journals ($year).txt" $year.txt
	echo AK House of Representatives - Journals $year renamed to $year.
	wget -w 2 --random-wait -i $year.txt
	echo $year links downloaded.
	rm $year.txt
	echo $year copied source file deleted.
	cd ..
done
