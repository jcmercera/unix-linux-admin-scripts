#!/bin/bash

###Step 1: Define a function to calculate file size in KB
fileSize() {
    FILE=$1
    if [ -f "$FILE" ]; then
        size=$(du -k "$FILE" | cut -f1)
        echo "$size"
    else
        echo "0"
    fi
}

###Step 2: Archive and compress /etc using gzip
echo "Compressing /etc using gzip..."
sudo tar -czf etc_backup.tar.gz /etc

###Step 3: Archive and compress /etc using bzip2
echo "Compressing /etc using bzip2..."
sudo tar -cjf etc_backup.tar.bz2 /etc

###Step 4: Calculate sizes
gzip_size=$(fileSize etc_backup.tar.gz)
bzip2_size=$(fileSize etc_backup.tar.bz2)

###Step 5: Display results
echo "Size of gzip file:  $gzip_size KB"
echo "Size of bzip2 file: $bzip2_size KB"

###Step 6: Show which is smaller

if [ "$gzip_size" -lt "$bzip2_size" ]; then
	echo "gzip compression produced a smaller file."
elif [ "$bzip2_size" -lt "$gzip_size" ]; then
	echo "bzip2 compression produced a smaller file."
else	
	echo "Both compressed files are the same size."
fi
