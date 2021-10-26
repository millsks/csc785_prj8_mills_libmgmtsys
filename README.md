## Kevin Mills<br/>CSC785<br/>Project 8 - Library Management System

### Instructions:
###    Follow the directions below to create the database and the underlying relations.

#### 1. As the root or super user run the following scripts in the exact order to create the database on the local machine.  If it is a Linux system, then you will need to use sudo to run as root.

```
mysql -u root -p < 01_project8_library_mgmt_system_ddl.sql
mysql -u root -p < 02_project8_library_mgmt_system_dml.sql
mysql -u root -p < 03_project8_library_mgmt_system_books_dml.sql
mysql -u root -p < 04_project8_library_mgmt_system_create_views.sql
mysql -u root -p < 05_project8_library_mgmt_system_create_view_users.sql
```

#### 2. As root or a normal user log in as libmgmtsys_user that was created in 05_project8_library_mgmt_system_create_view_users.sql

```
mysql -u libmgmtsys_user -p
```

#### 3. Run the following commands inside the mysql prompt to make sure you are connected to the correct user and that you only see the csc785_mills_prj8_libmgmtsys database.

```
select user();
show databases;
```


#### 4. Switch to the csc785_mills_prj8_libmgmtsys database.

```
use csc785_mills_prj8_libmgmtsys;
```


#### 5. Open 99_project8_library_mgmt_system_queries.sql and run some of the queries in there to check functionality.


#### 6. Run the following command as root to backup the books table in the csc785_mills_prj8_libmgmtsys database.

```
mysqldump --result-file=csc785_mills_prj8_libmgmtsys_backup_book_table.sql csc785_mills_prj8_libmgmtsys book
```


#### 7. Run the following command as root to backup the entire csc785_mills_prj8_libmgmtsys database. You will need to use sudo if this is a Linux machine.

```
mysqldump --add-drop-database --databases csc785_mills_prj8_libmgmtsys --result-file=csc785_mills_prj8_libmgmtsys_backup.sql
```


#### 8. Drop the csc785_mills_prj8_libmgmtsys database from the mysql prompt

```
drop database csc785_mills_prj8_libmgmtsys;
```


#### 9. Recover the csc785_mills_prj8_libmgmtsys database from the backup.

```
mysql -u root -p < csc785_mills_prj8_libmgmtsys_backup.sql
```
