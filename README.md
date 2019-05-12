# pmidep
PMI DEP code

1. Create the member data CSV: `php fetch.php`
1. Create/update the database: `sqlite3 members.sqlite`
1. (In sqlite) Set the input mode to CSV: `.mode csv`
1. (In sqlite) Import the CSV into the memberdata table: `.import output.csv memberdata`
1. (In sqlite) Exit: `.quit`
