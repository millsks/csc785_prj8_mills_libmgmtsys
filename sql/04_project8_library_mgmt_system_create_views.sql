/*
Kevin Mills
CSC785
Project 8

File: 04_project8_library_mgmt_system_create_views.sql
Description: DDL commands to create the views for csc785_mills_prj8_libmgmtsys
Usage: ./mysql -u <USERNAME> --password=<PASSWORD> < /path/to/04_project8_library_mgmt_system_create_views.sql
*/

/* Create a view for books that have Unknown Authors */
create or replace view csc785_mills_prj8_libmgmtsys.unknown_authors as select * from csc785_mills_prj8_libmgmtsys.book where author = 'Unknown Author' order by title;

/* Create a view that reports back what books have multiple copies. */ 
create or replace view csc785_mills_prj8_libmgmtsys.book_multiple_copies as select title, author, count(*) from csc785_mills_prj8_libmgmtsys.book group by title, author having count(*) > 1;
