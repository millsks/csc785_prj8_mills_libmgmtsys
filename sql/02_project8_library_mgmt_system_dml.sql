/*
Kevin Mills
CSC785
Project 8

File: 02_project8_library_mgmt_system_dml.sql
Description: DDL commands to create the csc785_mills_prj8_libmgmtsys database with underlying tables and relationships.
Usage: ./mysql -u <USERNAME> --password=<PASSWORD> < /path/to/02_project8_library_mgmt_system_dml.sql
*/

/* Make sure CSC785_MILLS_PRJ8_LIBMGMTSYS is still the active database */ 
USE csc785_mills_prj8_libmgmtsys;

/* Add LIBRARIAN_TYPE records */
INSERT INTO csc785_mills_prj8_libmgmtsys.librarian_type (type_name, book_limit, duration_limit)
VALUES ('FACULTY', 10, 14),
       ('STUDENT', 5, 7);

/* Add LIBRARIAN records */
INSERT INTO csc785_mills_prj8_libmgmtsys.librarian (name, librarian_type_id)
VALUES ('STUDENT_LIBRARIAN_1', 2),
	   ('STUDENT_LIBRARIAN_2', 2),
	   ('STUDENT_LIBRARIAN_3', 2),
	   ('FACULTY_LIBRARIAN_1', 1),
	   ('FACULTY_LIBRARIAN_2', 1);

/* Add BOOK records */
INSERT INTO csc785_mills_prj8_libmgmtsys.book (title, author)
VALUES ('BOOK_TITLE_1', 'AUTHOR_1'),
	   ('BOOK_TITLE_1', 'AUTHOR_1'),
	   ('BOOK_TITLE_1', 'AUTHOR_1'),
	   ('BOOK_TITLE_2', 'AUTHOR_2'),
	   ('BOOK_TITLE_2', 'AUTHOR_2'),
	   ('BOOK_TITLE_3', 'AUTHOR_3'),
	   ('BOOK_TITLE_4', 'AUTHOR_4'),
	   ('BOOK_TITLE_5', 'AUTHOR_2'),
	   ('BOOK_TITLE_6', 'AUTHOR_1');

/* Add PATRON records */
INSERT INTO csc785_mills_prj8_libmgmtsys.patron (name)
VALUES ('PATRON_1'),
	   ('PATRON_2'),
	   ('PATRON_3'),
	   ('PATRON_4'),
	   ('PATRON_5');
       

/* Create a BOOK_LOAN record. */
INSERT INTO csc785_mills_prj8_libmgmtsys.book_loan (librarian_id, patron_id, loan_date, duration)
VALUES (4, 1, CURRENT_TIMESTAMP, 14);

/* Create a BOOK_LOAN record that will cause an error. */
INSERT INTO csc785_mills_prj8_libmgmtsys.book_loan (librarian_id, patron_id, loan_date, duration)
VALUES (1, 1, CURRENT_TIMESTAMP, 13);

/* Add books to BOOK_LOAN 1 */
insert into csc785_mills_prj8_libmgmtsys.book_loan_book (book_loan_id, book_id)
values (1,1),
	   (1,4),
       (1,9);

/* Debug output after data load */
SELECT DATABASE(), USER(), VERSION(), NOW();
SHOW TABLES;

SELECT COUNT(*) librarian_type_count FROM csc785_mills_prj8_libmgmtsys.librarian_type;
SELECT COUNT(*) librarian_count FROM csc785_mills_prj8_libmgmtsys.librarian;
SELECT COUNT(*) book_count FROM csc785_mills_prj8_libmgmtsys.book;
SELECT COUNT(*) patron_count FROM csc785_mills_prj8_libmgmtsys.patron;
