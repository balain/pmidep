.mode csv
drop table if exists latest_data;
.import output.csv latest_data
.quit
