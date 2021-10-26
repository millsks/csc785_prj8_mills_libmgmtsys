/*
Kevin Mills
CSC785
Project 8

File: 99_project8_library_mgmt_system_queries.sql
Description: DDL commands to create the csc785_mills_prj8_libmgmtsys database with underlying tables and relationships.
Usage: ./mysql -u <USERNAME> --password=<PASSWORD> < /path/to/99_project8_library_mgmt_system_queries.sql
*/

use csc785_mills_prj8_libmgmtsys;

/* b) select specific rows and columns and c) apply search conditions with calculated fields. */
/* Get the number of copies of each book */
SELECT title, author, COUNT(*) FROM book GROUP BY title, author ORDER BY 3 DESC,2,1;
/* Get the number of copies of each book that are currently not checked out */
SELECT title, author, COUNT(*) FROM book WHERE id NOT IN (SELECT book_id FROM book_loan_book) GROUP BY title, author ORDER BY 3 DESC,2,1;


/* f) Use nested queries */
/* The triggers were created for the following reasons:
        - to make sure that a librarian could not check out books longer than they were allowed
        - to make sure that a librarian could not check out more books than they were allowed
        - to make sure that a patron could not check out books if they had a fine that was unpaid */
	
show create trigger book_loan_before_insert;
show create trigger book_loan_book_before_insert;

/* h) take multiple relations in a query */
/* Get the details of the checked out books displaying non-ID attributes */
SELECT l.name librarian_name, p.name patron_name, loan_date, duration, DATE_ADD(loan_date, INTERVAL duration DAY) due_date, b.title book_title
FROM book_loan bl, librarian l, patron p, book_loan_book blb, book b
WHERE bl.librarian_id = l.id
  AND bl.patron_id = p.id
  AND bl.id = blb.book_loan_id
  AND blb.book_id = b.id;

/* Try to insert a book_loan entry for a 14 day checkout period with librarian that is a student and has a limit of a 7 day checkout period. */
/* This should error out. */
INSERT INTO book_loan (librarian_id, patron_id, loan_date, duration)
VALUES (1, 1, CURRENT_TIMESTAMP, 14);
    
/* Get all available books */
SELECT COUNT(*) FROM book WHERE id NOT IN (SELECT book_id FROM book_loan_book);

/* Get the number of copies of each book */
SELECT title, author, COUNT(*) FROM book GROUP BY title, author ORDER BY 3 DESC,2,1;

/* Get the number of copies of each book that are currently not checked out */
SELECT title, author, COUNT(*) FROM book WHERE id NOT IN (SELECT book_id FROM book_loan_book) GROUP BY title, author ORDER BY 3 DESC,2,1;

/* Insert an entry into the FINE table for book_loan_id 1 */
INSERT INTO fine (amount, book_loan_id) VALUES (2.00, 1);
SELECT * FROM fine;

/* This should error out because there is a fine associated with this PATRON_ID */
INSERT INTO book_loan (librarian_id, patron_id, loan_date, duration)
VALUES (1, 1, CURRENT_TIMESTAMP, 7);

/* Update the fine entry wiht a paid_date */
UPDATE fine SET paid_date = CURRENT_TIMESTAMP WHERE book_loan_id = 1;

/* This should work now because the fine was paid. */
INSERT INTO book_loan (librarian_id, patron_id, loan_date, duration)
VALUES (1, 1, CURRENT_TIMESTAMP, 7);

/* Get all books where the Author's name starts with John and the title does not contain the word The */
SELECT * FROM book WHERE author LIKE '%John%' AND title NOT LIKE '%The%' ORDER BY title, author;
