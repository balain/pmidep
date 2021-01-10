# pmidep
PMI DEP code

# Repo Archived

As of Jan 11th, 2021, this repository has been archived.

# Pre-requisite: Configure Authentication

1. Enable both the soap and openssl PHP extensions in the php.ini file
1. Create a file called `auth.php` in the base directory
1. Follow this template:
```<?php

return (object) array(
    'username' => 'USERNAME_HERE',
    'password' => 'PASSWORD_HERE'
);
```
1. Replace USERNAME_HERE and PASSWORD_HERE with appropriate values from the DEP account username/password.

# Download and Ingest
- Run a script to download and ingest the data: `./process.sh`

# Site Lists
- Report on members by zip code: `sqlite3 latest_data < run_site_queries`
