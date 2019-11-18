#!/bin/sh

filename=pmi_membership.sqlite

current_time=$(date "+%Y%m%d-%H%M%S")
echo "Timestamp: $current_time"

php fetch.php && sqlite3 pmi_membership.sqlite < ingest.sql

md5sum $filename > $filename.md5sum

mkdir archive 2>/dev/null

newfilename=$filename-$current_time
echo "New filename: $newfilename"

cp $filename archive/$newfilename
