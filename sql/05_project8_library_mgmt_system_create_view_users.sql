/*
Kevin Mills
CSC785
Project 8

File: 05_project8_library_mgmt_system_create_view_users.sql
Description: DDL commands to create the users that access the views for csc785_mills_prj8_libmgmtsys
Usage: ./mysql -u <USERNAME> --password=<PASSWORD> < /path/to/05_project8_library_mgmt_system_create_view_users.sql
*/

/* Create a user that has CRUD access to the tables in csc785_mills_prj8_libmgmtsys */
create user if not exists libmgmtsys_user identified by 'Password123!0';
grant select, insert, update, delete on csc785_mills_prj8_libmgmtsys.* to libmgmtsys_user;

/* Create the user to access the unknown_authors view */
create user if not exists unknown_authors_report_user identified by 'Qwerty1234!0';
grant select on csc785_mills_prj8_libmgmtsys.unknown_authors to unknown_authors_report_user;


/* Create the user to access the book_multiple_copies view */
create user if not exists books_report_user identified by 'Qwerty1234!0';
grant select on csc785_mills_prj8_libmgmtsys.book_multiple_copies to books_report_user;
