# update-pgdb
For update tool for  PostgreSQL database

## How to use
1. Write .env file with PostgreSQL connection settings.
1. Write the SQL to be executed in the update.sql file
1. run update-pgdb

### .env file parameters
DB_HOST  PostgreSQL host  
DB_PORT  PostgreSQL port  
DB_NAME  PostgreSQL database name  
DB_USER  PostgreSQL user  
DB_PASSWORD PostgreSQL password   
DB_SCHEMA  PostgreSQL schema  
FILE_NAME  SQL file name to execute  
OG_FILE_NAME= Log file name  

### update.sql file
The // at the beginning of a line is treated as a comment.  
Lines without a ';' are assumed to be unfinished SQL and the characters in the line are concatenated, and the concatenated characters in the line with a ';' are executed as SQL.