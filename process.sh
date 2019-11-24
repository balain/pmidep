#!/bin/sh

filename=pmi_membership
fileext=.sqlite

current_time=$(date "+%Y%m%d-%H%M%S")
echo "Timestamp: $current_time"

php fetch.php && sqlite3 $filename$fileext < ingest.sql

md5sum $filename$fileext > $filename$fileext.md5sum

mkdir archive 2>/dev/null

newfilename=$filename-$current_time
echo "New filename: $newfilename$fileext"

cp $filename$fileext archive/$newfilename$fileext
