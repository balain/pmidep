#!/bin/sh

filename=pmi_membership
fileext=.sqlite

current_time=$(date "+%Y%m%d-%H%M%S")
echo $current_time | tee -a latest_timestamps.txt

php fetch.php && sqlite3 $filename$fileext < ingest.sql

md5sum $filename$fileext > $filename$fileext.md5sum

mkdir -p archive

newfilename=$filename-$current_time
echo $newfilename$fileext | tee -a logs/new_filenames.log

cp output.csv archive/output$current_time.csv
cp $filename$fileext archive/$newfilename$fileext

cd archive
md5sum output$current_time.csv > output$current_time.csv.md5sum
md5sum $newfilename$fileext > $newfilename$fileext.md5sum

