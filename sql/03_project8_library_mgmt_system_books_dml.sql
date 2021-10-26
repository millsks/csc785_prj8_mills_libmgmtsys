/*
Kevin Mills
CSC785
Project 8

File: 03_project8_library_mgmt_system_books_dml.sql
Description: DML commands to add book records to the book table in the csc785_mills_prj8_libmgmtsys database.
Usage: ./mysql -u <USERNAME> --password=<PASSWORD> < /path/to/03_project8_library_mgmt_system_books_dml.sql
*/

use csc785_mills_prj8_libmgmtsys;

SELECT COUNT(*) book_count FROM book;
INSERT INTO book (title, author) VALUES ('Fundamentals of Wavelets', 'Goswami, Jaideva');
INSERT INTO book (title, author) VALUES ('Data Smart', 'Foreman, John');
INSERT INTO book (title, author) VALUES ('God Created the Integers', 'Hawking, Stephen');
INSERT INTO book (title, author) VALUES ('Superfreakonomics', 'Dubner, Stephen');
INSERT INTO book (title, author) VALUES ('Orientalism', 'Said, Edward');
INSERT INTO book (title, author) VALUES ('Nature of Statistical Learning Theory, The', 'Vapnik, Vladimir');
INSERT INTO book (title, author) VALUES ('Integration of the Indian States', 'Menon, V P');
INSERT INTO book (title, author) VALUES ('Drunkard''s Walk, The', 'Mlodinow, Leonard');
INSERT INTO book (title, author) VALUES ('Image Processing & Mathematical Morphology', 'Shih, Frank');
INSERT INTO book (title, author) VALUES ('How to Think Like Sherlock Holmes', 'Konnikova, Maria');
INSERT INTO book (title, author) VALUES ('Data Scientists at Work', 'Sebastian Gutierrez');
INSERT INTO book (title, author) VALUES ('Slaughterhouse Five', 'Vonnegut, Kurt');
INSERT INTO book (title, author) VALUES ('Birth of a Theorem', 'Villani, Cedric');
INSERT INTO book (title, author) VALUES ('Structure & Interpretation of Computer Programs', 'Sussman, Gerald');
INSERT INTO book (title, author) VALUES ('Age of Wrath, The', 'Eraly, Abraham');
INSERT INTO book (title, author) VALUES ('Trial, The', 'Kafka, Frank');
INSERT INTO book (title, author) VALUES ('Statistical Decision Theory', 'Pratt, John');
INSERT INTO book (title, author) VALUES ('Data Mining Handbook', 'Nisbet, Robert');
INSERT INTO book (title, author) VALUES ('New Machiavelli, The', 'Wells, H. G.');
INSERT INTO book (title, author) VALUES ('Physics & Philosophy', 'Heisenberg, Werner');
INSERT INTO book (title, author) VALUES ('Making Software', 'Oram, Andy');
INSERT INTO book (title, author) VALUES ('Analysis, Vol I', 'Tao, Terence');
INSERT INTO book (title, author) VALUES ('Machine Learning for Hackers', 'Conway, Drew');
INSERT INTO book (title, author) VALUES ('Signal and the Noise, The', 'Silver, Nate');
INSERT INTO book (title, author) VALUES ('Python for Data Analysis', 'McKinney, Wes');
INSERT INTO book (title, author) VALUES ('Introduction to Algorithms', 'Cormen, Thomas');
INSERT INTO book (title, author) VALUES ('Beautiful and the Damned, The', 'Deb, Siddhartha');
INSERT INTO book (title, author) VALUES ('Outsider, The', 'Camus, Albert');
INSERT INTO book (title, author) VALUES ('Complete Sherlock Holmes, The - Vol I', 'Doyle, Arthur Conan');
INSERT INTO book (title, author) VALUES ('Complete Sherlock Holmes, The - Vol II', 'Doyle, Arthur Conan');
INSERT INTO book (title, author) VALUES ('Wealth of Nations, The', 'Smith, Adam');
INSERT INTO book (title, author) VALUES ('Pillars of the Earth, The', 'Follett, Ken');
INSERT INTO book (title, author) VALUES ('Mein Kampf', 'Hitler, Adolf');
INSERT INTO book (title, author) VALUES ('Tao of Physics, The', 'Capra, Fritjof');
INSERT INTO book (title, author) VALUES ('Surely You''re Joking Mr Feynman', 'Feynman, Richard');
INSERT INTO book (title, author) VALUES ('Farewell to Arms, A', 'Hemingway, Ernest');
INSERT INTO book (title, author) VALUES ('Veteran, The', 'Forsyth, Frederick');
INSERT INTO book (title, author) VALUES ('False Impressions', 'Archer, Jeffery');
INSERT INTO book (title, author) VALUES ('Last Lecture, The', 'Pausch, Randy');
INSERT INTO book (title, author) VALUES ('Return of the Primitive', 'Rand, Ayn');
INSERT INTO book (title, author) VALUES ('Jurassic Park', 'Crichton, Michael');
INSERT INTO book (title, author) VALUES ('Russian Journal, A', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Tales of Mystery and Imagination', 'Poe, Edgar Allen');
INSERT INTO book (title, author) VALUES ('Freakonomics', 'Dubner, Stephen');
INSERT INTO book (title, author) VALUES ('Hidden Connections, The', 'Capra, Fritjof');
INSERT INTO book (title, author) VALUES ('Story of Philosophy, The', 'Durant, Will');
INSERT INTO book (title, author) VALUES ('Asami Asami', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Journal of a Novel', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Once There Was a War', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Moon is Down, The', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Brethren, The', 'Grisham, John');
INSERT INTO book (title, author) VALUES ('In a Free State', 'Naipaul, V. S.');
INSERT INTO book (title, author) VALUES ('Catch 22', 'Heller, Joseph');
INSERT INTO book (title, author) VALUES ('Complete Mastermind, The', 'BBC');
INSERT INTO book (title, author) VALUES ('Dylan on Dylan', 'Dylan, Bob');
INSERT INTO book (title, author) VALUES ('Soft Computing & Intelligent Systems', 'Gupta, Madan');
INSERT INTO book (title, author) VALUES ('Textbook of Economic Theory', 'Stonier, Alfred');
INSERT INTO book (title, author) VALUES ('Econometric Analysis', 'Greene, W. H.');
INSERT INTO book (title, author) VALUES ('Learning OpenCV', 'Bradsky, Gary');
INSERT INTO book (title, author) VALUES ('Data Structures Using C & C++', 'Tanenbaum, Andrew');
INSERT INTO book (title, author) VALUES ('Computer Vision, A Modern Approach', 'Forsyth, David');
INSERT INTO book (title, author) VALUES ('Principles of Communication Systems', 'Taub, Schilling');
INSERT INTO book (title, author) VALUES ('Let Us C', 'Kanetkar, Yashwant');
INSERT INTO book (title, author) VALUES ('Amulet of Samarkand, The', 'Stroud, Jonathan');
INSERT INTO book (title, author) VALUES ('Crime and Punishment', 'Dostoevsky, Fyodor');
INSERT INTO book (title, author) VALUES ('Angels & Demons', 'Brown, Dan');
INSERT INTO book (title, author) VALUES ('Argumentative Indian, The', 'Sen, Amartya');
INSERT INTO book (title, author) VALUES ('Sea of Poppies', 'Ghosh, Amitav');
INSERT INTO book (title, author) VALUES ('Idea of Justice, The', 'Sen, Amartya');
INSERT INTO book (title, author) VALUES ('Raisin in the Sun, A', 'Hansberry, Lorraine');
INSERT INTO book (title, author) VALUES ('All the President''s Men', 'Woodward, Bob');
INSERT INTO book (title, author) VALUES ('Prisoner of Birth, A', 'Archer, Jeffery');
INSERT INTO book (title, author) VALUES ('Scoop!', 'Nayar, Kuldip');
INSERT INTO book (title, author) VALUES ('Ahe Manohar Tari', 'Deshpande, Sunita');
INSERT INTO book (title, author) VALUES ('Last Mughal, The', 'Dalrymple, William');
INSERT INTO book (title, author) VALUES ('Social Choice & Welfare, Vol 39 No. 1', 'Various');
INSERT INTO book (title, author) VALUES ('Radiowaril Bhashane & Shrutika', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Gun Gayin Awadi', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Aghal Paghal', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Maqta-e-Ghalib', 'Garg, Sanjay');
INSERT INTO book (title, author) VALUES ('Beyond Degrees', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Manasa', 'Kale, V P');
INSERT INTO book (title, author) VALUES ('India from Midnight to Milennium', 'Tharoor, Shashi');
INSERT INTO book (title, author) VALUES ('World''s Greatest Trials, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Data Scientists at Work', 'Sebastian Gutierrez');
INSERT INTO book (title, author) VALUES ('Great Indian Novel, The', 'Tharoor, Shashi');
INSERT INTO book (title, author) VALUES ('O Jerusalem!', 'Lapierre, Dominique');
INSERT INTO book (title, author) VALUES ('City of Joy, The', 'Lapierre, Dominique');
INSERT INTO book (title, author) VALUES ('Freedom at Midnight', 'Lapierre, Dominique');
INSERT INTO book (title, author) VALUES ('Winter of Our Discontent, The', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('On Education', 'Russell, Bertrand');
INSERT INTO book (title, author) VALUES ('Free Will', 'Harris, Sam');
INSERT INTO book (title, author) VALUES ('Bookless in Baghdad', 'Tharoor, Shashi');
INSERT INTO book (title, author) VALUES ('Case of the Lame Canary, The', 'Gardner, Earle Stanley');
INSERT INTO book (title, author) VALUES ('Theory of Everything, The', 'Hawking, Stephen');
INSERT INTO book (title, author) VALUES ('New Markets & Other Essays', 'Drucker, Peter');
INSERT INTO book (title, author) VALUES ('Electric Universe', 'Bodanis, David');
INSERT INTO book (title, author) VALUES ('Hunchback of Notre Dame, The', 'Hugo, Victor');
INSERT INTO book (title, author) VALUES ('Burning Bright', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Age of Discontuinity, The', 'Drucker, Peter');
INSERT INTO book (title, author) VALUES ('Doctor in the Nude', 'Gordon, Richard');
INSERT INTO book (title, author) VALUES ('Down and Out in Paris & London', 'Orwell, George');
INSERT INTO book (title, author) VALUES ('Identity & Violence', 'Sen, Amartya');
INSERT INTO book (title, author) VALUES ('Beyond the Three Seas', 'Dalrymple, William');
INSERT INTO book (title, author) VALUES ('World''s Greatest Short Stories, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Talking Straight', 'Iacoca, Lee');
INSERT INTO book (title, author) VALUES ('Maugham''s Collected Short Stories, Vol 3', 'Maugham, William S');
INSERT INTO book (title, author) VALUES ('Phantom of Manhattan, The', 'Forsyth, Frederick');
INSERT INTO book (title, author) VALUES ('Ashenden of The British Agent', 'Maugham, William S');
INSERT INTO book (title, author) VALUES ('Zen & The Art of Motorcycle Maintenance', 'Pirsig, Robert');
INSERT INTO book (title, author) VALUES ('Great War for Civilization, The', 'Fisk, Robert');
INSERT INTO book (title, author) VALUES ('We the Living', 'Rand, Ayn');
INSERT INTO book (title, author) VALUES ('Artist and the Mathematician, The', 'Aczel, Amir');
INSERT INTO book (title, author) VALUES ('History of Western Philosophy', 'Russell, Bertrand');
INSERT INTO book (title, author) VALUES ('Selected Short Stories', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Rationality & Freedom', 'Sen, Amartya');
INSERT INTO book (title, author) VALUES ('Clash of Civilizations and Remaking of the World Order', 'Huntington, Samuel');
INSERT INTO book (title, author) VALUES ('Uncommon Wisdom', 'Capra, Fritjof');
INSERT INTO book (title, author) VALUES ('One', 'Bach, Richard');
INSERT INTO book (title, author) VALUES ('Karl Marx Biography', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('To Sir With Love', 'Braithwaite');
INSERT INTO book (title, author) VALUES ('Half A Life', 'Naipaul, V S');
INSERT INTO book (title, author) VALUES ('Discovery of India, The', 'Nehru, Jawaharlal');
INSERT INTO book (title, author) VALUES ('Apulki', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Unpopular Essays', 'Russell, Bertrand');
INSERT INTO book (title, author) VALUES ('Deceiver, The', 'Forsyth, Frederick');
INSERT INTO book (title, author) VALUES ('Veil: Secret Wars of the CIA', 'Woodward, Bob');
INSERT INTO book (title, author) VALUES ('Char Shabda', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Rosy is My Relative', 'Durrell, Gerald');
INSERT INTO book (title, author) VALUES ('Moon and Sixpence, The', 'Maugham, William S');
INSERT INTO book (title, author) VALUES ('Political Philosophers', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Short History of the World, A', 'Wells, H G');
INSERT INTO book (title, author) VALUES ('Trembling of a Leaf, The', 'Maugham, William S');
INSERT INTO book (title, author) VALUES ('Doctor on the Brain', 'Gordon, Richard');
INSERT INTO book (title, author) VALUES ('Simpsons & Their Mathematical Secrets', 'Singh, Simon');
INSERT INTO book (title, author) VALUES ('Pattern Classification', 'Duda, Hart');
INSERT INTO book (title, author) VALUES ('From Beirut to Jerusalem', 'Friedman, Thomas');
INSERT INTO book (title, author) VALUES ('Code Book, The', 'Singh, Simon');
INSERT INTO book (title, author) VALUES ('Age of the Warrior, The', 'Fisk, Robert');
INSERT INTO book (title, author) VALUES ('Final Crisis', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Killing Joke, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Flashpoint', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Batman Earth One', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Crisis on Infinite Earths', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Numbers Behind Numb3rs, The', 'Devlin, Keith');
INSERT INTO book (title, author) VALUES ('Superman Earth One - 1', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Superman Earth One - 2', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Justice League: Throne of Atlantis', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Justice League: The Villain''s Journey', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Death of Superman, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('History of the DC Universe', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Batman: The Long Halloween', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Life in Letters, A', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Information, The', 'Gleick, James');
INSERT INTO book (title, author) VALUES ('Journal of Economics, vol 106 No 3', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Elements of Information Theory', 'Thomas, Joy');
INSERT INTO book (title, author) VALUES ('Power Electronics - Rashid', 'Rashid, Muhammad');
INSERT INTO book (title, author) VALUES ('Power Electronics - Mohan', 'Mohan, Ned');
INSERT INTO book (title, author) VALUES ('Neural Networks', 'Haykin, Simon');
INSERT INTO book (title, author) VALUES ('Grapes of Wrath, The', 'Steinbeck, John');
INSERT INTO book (title, author) VALUES ('Vyakti ani Valli', 'Deshpande, P L');
INSERT INTO book (title, author) VALUES ('Statistical Learning Theory', 'Vapnik, Vladimir');
INSERT INTO book (title, author) VALUES ('Empire of the Mughal - The Tainted Throne', 'Rutherford, Alex');
INSERT INTO book (title, author) VALUES ('Empire of the Mughal - Brothers at War', 'Rutherford, Alex');
INSERT INTO book (title, author) VALUES ('Empire of the Mughal - Ruler of the World', 'Rutherford, Alex');
INSERT INTO book (title, author) VALUES ('Empire of the Mughal - The Serpent''s Tooth', 'Rutherford, Alex');
INSERT INTO book (title, author) VALUES ('Empire of the Mughal - Raiders from the North', 'Rutherford, Alex');
INSERT INTO book (title, author) VALUES ('Mossad', 'Baz-Zohar, Michael');
INSERT INTO book (title, author) VALUES ('Jim Corbett Omnibus', 'Corbett, Jim');
INSERT INTO book (title, author) VALUES ('20000 Leagues Under the Sea', 'Verne, Jules');
INSERT INTO book (title, author) VALUES ('Batatyachi Chal', 'Deshpande P L');
INSERT INTO book (title, author) VALUES ('Hafasavnuk', 'Deshpande P L');
INSERT INTO book (title, author) VALUES ('Urlasurla', 'Deshpande P L');
INSERT INTO book (title, author) VALUES ('Pointers in C', 'Kanetkar, Yashwant');
INSERT INTO book (title, author) VALUES ('Cathedral and the Bazaar, The', 'Raymond, Eric');
INSERT INTO book (title, author) VALUES ('Design with OpAmps', 'Franco, Sergio');
INSERT INTO book (title, author) VALUES ('Think Complexity', 'Downey, Allen');
INSERT INTO book (title, author) VALUES ('Devil''s Advocate, The', 'West, Morris');
INSERT INTO book (title, author) VALUES ('Ayn Rand Answers', 'Rand, Ayn');
INSERT INTO book (title, author) VALUES ('Philosophy: Who Needs It', 'Rand, Ayn');
INSERT INTO book (title, author) VALUES ('World''s Great Thinkers, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Data Analysis with Open Source Tools', 'Janert, Phillip');
INSERT INTO book (title, author) VALUES ('Broca''s Brain', 'Sagan, Carl');
INSERT INTO book (title, author) VALUES ('Men of Mathematics', 'Bell, E T');
INSERT INTO book (title, author) VALUES ('Oxford book of Modern Science Writing', 'Dawkins, Richard');
INSERT INTO book (title, author) VALUES ('Justice, Judiciary and Democracy', 'Ranjan, Sudhanshu');
INSERT INTO book (title, author) VALUES ('Pillars of the Earth, The', 'Follett, Ken');
INSERT INTO book (title, author) VALUES ('Arthashastra, The', 'Kautiyla');
INSERT INTO book (title, author) VALUES ('We the People', 'Palkhivala');
INSERT INTO book (title, author) VALUES ('We the Nation', 'Palkhivala');
INSERT INTO book (title, author) VALUES ('Courtroom Genius, The', 'Sorabjee');
INSERT INTO book (title, author) VALUES ('Dongri to Dubai', 'Zaidi, Hussain');
INSERT INTO book (title, author) VALUES ('History of England, Foundation', 'Ackroyd, Peter');
INSERT INTO book (title, author) VALUES ('City of Djinns', 'Dalrymple, William');
INSERT INTO book (title, author) VALUES ('India''s Legal System', 'Nariman');
INSERT INTO book (title, author) VALUES ('More Tears to Cry', 'Sassoon, Jean');
INSERT INTO book (title, author) VALUES ('Ropemaker, The', 'Dickinson, Peter');
INSERT INTO book (title, author) VALUES ('Angels & Demons', 'Brown, Dan');
INSERT INTO book (title, author) VALUES ('Judge, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Attorney, The', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Prince, The', 'Machiavelli');
INSERT INTO book (title, author) VALUES ('Eyeless in Gaza', 'Huxley, Aldous');
INSERT INTO book (title, author) VALUES ('Tales of Beedle the Bard', 'Rowling, J K');
INSERT INTO book (title, author) VALUES ('Girl with the Dragon Tattoo', 'Larsson, Steig');
INSERT INTO book (title, author) VALUES ('Angels & Demons', 'Brown, Dan');
INSERT INTO book (title, author) VALUES ('Girl who kicked the Hornet''s Nest', 'Larsson, Steig');
INSERT INTO book (title, author) VALUES ('Girl who played with Fire', 'Larsson, Steig');
INSERT INTO book (title, author) VALUES ('Batman Handbook', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Murphy''s Law', 'Unknown Author');
INSERT INTO book (title, author) VALUES ('Structure and Randomness', 'Tao, Terence');
INSERT INTO book (title, author) VALUES ('Image Processing with MATLAB', 'Eddins, Steve');
INSERT INTO book (title, author) VALUES ('Animal Farm', 'Orwell, George');
INSERT INTO book (title, author) VALUES ('Idiot, The', 'Dostoevsky, Fyodor');
INSERT INTO book (title, author) VALUES ('Christmas Carol, A', 'Dickens, Charles');
SELECT COUNT(*) book_count FROM book;
