-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: csc785_mills_prj8_libmgmtsys
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `csc785_mills_prj8_libmgmtsys`
--

/*!40000 DROP DATABASE IF EXISTS `csc785_mills_prj8_libmgmtsys`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `csc785_mills_prj8_libmgmtsys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `csc785_mills_prj8_libmgmtsys`;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'BOOK_TITLE_1','AUTHOR_1'),(2,'BOOK_TITLE_1','AUTHOR_1'),(3,'BOOK_TITLE_1','AUTHOR_1'),(4,'BOOK_TITLE_2','AUTHOR_2'),(5,'BOOK_TITLE_2','AUTHOR_2'),(6,'BOOK_TITLE_3','AUTHOR_3'),(7,'BOOK_TITLE_4','AUTHOR_4'),(8,'BOOK_TITLE_5','AUTHOR_2'),(9,'BOOK_TITLE_6','AUTHOR_1'),(10,'Fundamentals of Wavelets','Goswami, Jaideva'),(11,'Data Smart','Foreman, John'),(12,'God Created the Integers','Hawking, Stephen'),(13,'Superfreakonomics','Dubner, Stephen'),(14,'Orientalism','Said, Edward'),(15,'Nature of Statistical Learning Theory, The','Vapnik, Vladimir'),(16,'Integration of the Indian States','Menon, V P'),(17,'Drunkard\'s Walk, The','Mlodinow, Leonard'),(18,'Image Processing & Mathematical Morphology','Shih, Frank'),(19,'How to Think Like Sherlock Holmes','Konnikova, Maria'),(20,'Data Scientists at Work','Sebastian Gutierrez'),(21,'Slaughterhouse Five','Vonnegut, Kurt'),(22,'Birth of a Theorem','Villani, Cedric'),(23,'Structure & Interpretation of Computer Programs','Sussman, Gerald'),(24,'Age of Wrath, The','Eraly, Abraham'),(25,'Trial, The','Kafka, Frank'),(26,'Statistical Decision Theory','Pratt, John'),(27,'Data Mining Handbook','Nisbet, Robert'),(28,'New Machiavelli, The','Wells, H. G.'),(29,'Physics & Philosophy','Heisenberg, Werner'),(30,'Making Software','Oram, Andy'),(31,'Analysis, Vol I','Tao, Terence'),(32,'Machine Learning for Hackers','Conway, Drew'),(33,'Signal and the Noise, The','Silver, Nate'),(34,'Python for Data Analysis','McKinney, Wes'),(35,'Introduction to Algorithms','Cormen, Thomas'),(36,'Beautiful and the Damned, The','Deb, Siddhartha'),(37,'Outsider, The','Camus, Albert'),(38,'Complete Sherlock Holmes, The - Vol I','Doyle, Arthur Conan'),(39,'Complete Sherlock Holmes, The - Vol II','Doyle, Arthur Conan'),(40,'Wealth of Nations, The','Smith, Adam'),(41,'Pillars of the Earth, The','Follett, Ken'),(42,'Mein Kampf','Hitler, Adolf'),(43,'Tao of Physics, The','Capra, Fritjof'),(44,'Surely You\'re Joking Mr Feynman','Feynman, Richard'),(45,'Farewell to Arms, A','Hemingway, Ernest'),(46,'Veteran, The','Forsyth, Frederick'),(47,'False Impressions','Archer, Jeffery'),(48,'Last Lecture, The','Pausch, Randy'),(49,'Return of the Primitive','Rand, Ayn'),(50,'Jurassic Park','Crichton, Michael'),(51,'Russian Journal, A','Steinbeck, John'),(52,'Tales of Mystery and Imagination','Poe, Edgar Allen'),(53,'Freakonomics','Dubner, Stephen'),(54,'Hidden Connections, The','Capra, Fritjof'),(55,'Story of Philosophy, The','Durant, Will'),(56,'Asami Asami','Deshpande, P L'),(57,'Journal of a Novel','Steinbeck, John'),(58,'Once There Was a War','Steinbeck, John'),(59,'Moon is Down, The','Steinbeck, John'),(60,'Brethren, The','Grisham, John'),(61,'In a Free State','Naipaul, V. S.'),(62,'Catch 22','Heller, Joseph'),(63,'Complete Mastermind, The','BBC'),(64,'Dylan on Dylan','Dylan, Bob'),(65,'Soft Computing & Intelligent Systems','Gupta, Madan'),(66,'Textbook of Economic Theory','Stonier, Alfred'),(67,'Econometric Analysis','Greene, W. H.'),(68,'Learning OpenCV','Bradsky, Gary'),(69,'Data Structures Using C & C++','Tanenbaum, Andrew'),(70,'Computer Vision, A Modern Approach','Forsyth, David'),(71,'Principles of Communication Systems','Taub, Schilling'),(72,'Let Us C','Kanetkar, Yashwant'),(73,'Amulet of Samarkand, The','Stroud, Jonathan'),(74,'Crime and Punishment','Dostoevsky, Fyodor'),(75,'Angels & Demons','Brown, Dan'),(76,'Argumentative Indian, The','Sen, Amartya'),(77,'Sea of Poppies','Ghosh, Amitav'),(78,'Idea of Justice, The','Sen, Amartya'),(79,'Raisin in the Sun, A','Hansberry, Lorraine'),(80,'All the President\'s Men','Woodward, Bob'),(81,'Prisoner of Birth, A','Archer, Jeffery'),(82,'Scoop!','Nayar, Kuldip'),(83,'Ahe Manohar Tari','Deshpande, Sunita'),(84,'Last Mughal, The','Dalrymple, William'),(85,'Social Choice & Welfare, Vol 39 No. 1','Various'),(86,'Radiowaril Bhashane & Shrutika','Deshpande, P L'),(87,'Gun Gayin Awadi','Deshpande, P L'),(88,'Aghal Paghal','Deshpande, P L'),(89,'Maqta-e-Ghalib','Garg, Sanjay'),(90,'Beyond Degrees','Unknown Author'),(91,'Manasa','Kale, V P'),(92,'India from Midnight to Milennium','Tharoor, Shashi'),(93,'World\'s Greatest Trials, The','Unknown Author'),(94,'Data Scientists at Work','Sebastian Gutierrez'),(95,'Great Indian Novel, The','Tharoor, Shashi'),(96,'O Jerusalem!','Lapierre, Dominique'),(97,'City of Joy, The','Lapierre, Dominique'),(98,'Freedom at Midnight','Lapierre, Dominique'),(99,'Winter of Our Discontent, The','Steinbeck, John'),(100,'On Education','Russell, Bertrand'),(101,'Free Will','Harris, Sam'),(102,'Bookless in Baghdad','Tharoor, Shashi'),(103,'Case of the Lame Canary, The','Gardner, Earle Stanley'),(104,'Theory of Everything, The','Hawking, Stephen'),(105,'New Markets & Other Essays','Drucker, Peter'),(106,'Electric Universe','Bodanis, David'),(107,'Hunchback of Notre Dame, The','Hugo, Victor'),(108,'Burning Bright','Steinbeck, John'),(109,'Age of Discontuinity, The','Drucker, Peter'),(110,'Doctor in the Nude','Gordon, Richard'),(111,'Down and Out in Paris & London','Orwell, George'),(112,'Identity & Violence','Sen, Amartya'),(113,'Beyond the Three Seas','Dalrymple, William'),(114,'World\'s Greatest Short Stories, The','Unknown Author'),(115,'Talking Straight','Iacoca, Lee'),(116,'Maugham\'s Collected Short Stories, Vol 3','Maugham, William S'),(117,'Phantom of Manhattan, The','Forsyth, Frederick'),(118,'Ashenden of The British Agent','Maugham, William S'),(119,'Zen & The Art of Motorcycle Maintenance','Pirsig, Robert'),(120,'Great War for Civilization, The','Fisk, Robert'),(121,'We the Living','Rand, Ayn'),(122,'Artist and the Mathematician, The','Aczel, Amir'),(123,'History of Western Philosophy','Russell, Bertrand'),(124,'Selected Short Stories','Unknown Author'),(125,'Rationality & Freedom','Sen, Amartya'),(126,'Clash of Civilizations and Remaking of the World Order','Huntington, Samuel'),(127,'Uncommon Wisdom','Capra, Fritjof'),(128,'One','Bach, Richard'),(129,'Karl Marx Biography','Unknown Author'),(130,'To Sir With Love','Braithwaite'),(131,'Half A Life','Naipaul, V S'),(132,'Discovery of India, The','Nehru, Jawaharlal'),(133,'Apulki','Deshpande, P L'),(134,'Unpopular Essays','Russell, Bertrand'),(135,'Deceiver, The','Forsyth, Frederick'),(136,'Veil: Secret Wars of the CIA','Woodward, Bob'),(137,'Char Shabda','Deshpande, P L'),(138,'Rosy is My Relative','Durrell, Gerald'),(139,'Moon and Sixpence, The','Maugham, William S'),(140,'Political Philosophers','Unknown Author'),(141,'Short History of the World, A','Wells, H G'),(142,'Trembling of a Leaf, The','Maugham, William S'),(143,'Doctor on the Brain','Gordon, Richard'),(144,'Simpsons & Their Mathematical Secrets','Singh, Simon'),(145,'Pattern Classification','Duda, Hart'),(146,'From Beirut to Jerusalem','Friedman, Thomas'),(147,'Code Book, The','Singh, Simon'),(148,'Age of the Warrior, The','Fisk, Robert'),(149,'Final Crisis','Unknown Author'),(150,'Killing Joke, The','Unknown Author'),(151,'Flashpoint','Unknown Author'),(152,'Batman Earth One','Unknown Author'),(153,'Crisis on Infinite Earths','Unknown Author'),(154,'Numbers Behind Numb3rs, The','Devlin, Keith'),(155,'Superman Earth One - 1','Unknown Author'),(156,'Superman Earth One - 2','Unknown Author'),(157,'Justice League: Throne of Atlantis','Unknown Author'),(158,'Justice League: The Villain\'s Journey','Unknown Author'),(159,'Death of Superman, The','Unknown Author'),(160,'History of the DC Universe','Unknown Author'),(161,'Batman: The Long Halloween','Unknown Author'),(162,'Life in Letters, A','Steinbeck, John'),(163,'Information, The','Gleick, James'),(164,'Journal of Economics, vol 106 No 3','Unknown Author'),(165,'Elements of Information Theory','Thomas, Joy'),(166,'Power Electronics - Rashid','Rashid, Muhammad'),(167,'Power Electronics - Mohan','Mohan, Ned'),(168,'Neural Networks','Haykin, Simon'),(169,'Grapes of Wrath, The','Steinbeck, John'),(170,'Vyakti ani Valli','Deshpande, P L'),(171,'Statistical Learning Theory','Vapnik, Vladimir'),(172,'Empire of the Mughal - The Tainted Throne','Rutherford, Alex'),(173,'Empire of the Mughal - Brothers at War','Rutherford, Alex'),(174,'Empire of the Mughal - Ruler of the World','Rutherford, Alex'),(175,'Empire of the Mughal - The Serpent\'s Tooth','Rutherford, Alex'),(176,'Empire of the Mughal - Raiders from the North','Rutherford, Alex'),(177,'Mossad','Baz-Zohar, Michael'),(178,'Jim Corbett Omnibus','Corbett, Jim'),(179,'20000 Leagues Under the Sea','Verne, Jules'),(180,'Batatyachi Chal','Deshpande P L'),(181,'Hafasavnuk','Deshpande P L'),(182,'Urlasurla','Deshpande P L'),(183,'Pointers in C','Kanetkar, Yashwant'),(184,'Cathedral and the Bazaar, The','Raymond, Eric'),(185,'Design with OpAmps','Franco, Sergio'),(186,'Think Complexity','Downey, Allen'),(187,'Devil\'s Advocate, The','West, Morris'),(188,'Ayn Rand Answers','Rand, Ayn'),(189,'Philosophy: Who Needs It','Rand, Ayn'),(190,'World\'s Great Thinkers, The','Unknown Author'),(191,'Data Analysis with Open Source Tools','Janert, Phillip'),(192,'Broca\'s Brain','Sagan, Carl'),(193,'Men of Mathematics','Bell, E T'),(194,'Oxford book of Modern Science Writing','Dawkins, Richard'),(195,'Justice, Judiciary and Democracy','Ranjan, Sudhanshu'),(196,'Pillars of the Earth, The','Follett, Ken'),(197,'Arthashastra, The','Kautiyla'),(198,'We the People','Palkhivala'),(199,'We the Nation','Palkhivala'),(200,'Courtroom Genius, The','Sorabjee'),(201,'Dongri to Dubai','Zaidi, Hussain'),(202,'History of England, Foundation','Ackroyd, Peter'),(203,'City of Djinns','Dalrymple, William'),(204,'India\'s Legal System','Nariman'),(205,'More Tears to Cry','Sassoon, Jean'),(206,'Ropemaker, The','Dickinson, Peter'),(207,'Angels & Demons','Brown, Dan'),(208,'Judge, The','Unknown Author'),(209,'Attorney, The','Unknown Author'),(210,'Prince, The','Machiavelli'),(211,'Eyeless in Gaza','Huxley, Aldous'),(212,'Tales of Beedle the Bard','Rowling, J K'),(213,'Girl with the Dragon Tattoo','Larsson, Steig'),(214,'Angels & Demons','Brown, Dan'),(215,'Girl who kicked the Hornet\'s Nest','Larsson, Steig'),(216,'Girl who played with Fire','Larsson, Steig'),(217,'Batman Handbook','Unknown Author'),(218,'Murphy\'s Law','Unknown Author'),(219,'Structure and Randomness','Tao, Terence'),(220,'Image Processing with MATLAB','Eddins, Steve'),(221,'Animal Farm','Orwell, George'),(222,'Idiot, The','Dostoevsky, Fyodor'),(223,'Christmas Carol, A','Dickens, Charles');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_loan`
--

DROP TABLE IF EXISTS `book_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_loan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `librarian_id` int NOT NULL,
  `patron_id` int NOT NULL,
  `loan_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int NOT NULL DEFAULT '7',
  PRIMARY KEY (`id`),
  KEY `fk_BOOK_LOAN_1_idx` (`librarian_id`),
  KEY `fk_BOOK_LOAN_2_idx` (`patron_id`),
  CONSTRAINT `fk_BOOK_LOAN_1` FOREIGN KEY (`librarian_id`) REFERENCES `librarian` (`id`),
  CONSTRAINT `fk_BOOK_LOAN_2` FOREIGN KEY (`patron_id`) REFERENCES `patron` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_loan`
--

LOCK TABLES `book_loan` WRITE;
/*!40000 ALTER TABLE `book_loan` DISABLE KEYS */;
INSERT INTO `book_loan` VALUES (1,4,1,'2021-10-08 02:49:35',14);
/*!40000 ALTER TABLE `book_loan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_loan_before_insert` BEFORE INSERT ON `book_loan` FOR EACH ROW BEGIN
	IF(NEW.duration > (SELECT lt.duration_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = NEW.librarian_id))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out a book for this duration.";
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_loan_before_insert2` BEFORE INSERT ON `book_loan` FOR EACH ROW BEGIN
	IF((select count(*) from csc785_mills_prj8_libmgmtsys.fine where book_loan_id = (select id from csc785_mills_prj8_libmgmtsys.book_loan where patron_id = NEW.patron_id and paid_date is null)) > 0)
    THEN
		signal SQLSTATE '45000' SET message_text = "This patron cannot check out any books as there exists a fine with their ID.";
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_loan_before_update` BEFORE UPDATE ON `book_loan` FOR EACH ROW BEGIN
	IF(NEW.duration > (SELECT lt.duration_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = NEW.librarian_id))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out a book for this duration.";
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `book_loan_book`
--

DROP TABLE IF EXISTS `book_loan_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_loan_book` (
  `book_loan_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`book_loan_id`,`book_id`),
  KEY `fk_BOOK_LOAN_BOOK_BOOK1_idx` (`book_id`),
  CONSTRAINT `fk_BOOK_LOAN_BOOK_BOOK1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_BOOK_LOAN_BOOK_BOOK_LOAN1` FOREIGN KEY (`book_loan_id`) REFERENCES `book_loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_loan_book`
--

LOCK TABLES `book_loan_book` WRITE;
/*!40000 ALTER TABLE `book_loan_book` DISABLE KEYS */;
INSERT INTO `book_loan_book` VALUES (1,1),(1,4),(1,9);
/*!40000 ALTER TABLE `book_loan_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_loan_book_before_insert` BEFORE INSERT ON `book_loan_book` FOR EACH ROW BEGIN
	IF((select count(*) from csc785_mills_prj8_libmgmtsys.book_loan_book where book_loan_id = NEW.book_loan_id) > (SELECT lt.book_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = (select librarian_id from csc785_mills_prj8_libmgmtsys.book_loan where id = NEW.book_loan_id)))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out any more books for this book loan.";
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_loan_book_before_update` BEFORE UPDATE ON `book_loan_book` FOR EACH ROW BEGIN
	IF((select count(*) from csc785_mills_prj8_libmgmtsys.book_loan_book where book_loan_id = NEW.book_loan_id) > (SELECT lt.book_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = (select librarian_id from csc785_mills_prj8_libmgmtsys.book_loan where id = NEW.book_loan_id)))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out any more books for this book loan.";
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `book_multiple_copies`
--

DROP TABLE IF EXISTS `book_multiple_copies`;
/*!50001 DROP VIEW IF EXISTS `book_multiple_copies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `book_multiple_copies` AS SELECT 
 1 AS `title`,
 1 AS `author`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fine`
--

DROP TABLE IF EXISTS `fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `incurred_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` float NOT NULL DEFAULT '1',
  `paid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_loan_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_FINE_1_idx` (`book_loan_id`),
  CONSTRAINT `fk_FINE_1` FOREIGN KEY (`book_loan_id`) REFERENCES `book_loan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine`
--

LOCK TABLES `fine` WRITE;
/*!40000 ALTER TABLE `fine` DISABLE KEYS */;
/*!40000 ALTER TABLE `fine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarian` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `librarian_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_LIBRARIAN_1_idx` (`librarian_type_id`),
  CONSTRAINT `fk_LIBRARIAN_1` FOREIGN KEY (`librarian_type_id`) REFERENCES `librarian_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian`
--

LOCK TABLES `librarian` WRITE;
/*!40000 ALTER TABLE `librarian` DISABLE KEYS */;
INSERT INTO `librarian` VALUES (1,'STUDENT_LIBRARIAN_1',2),(2,'STUDENT_LIBRARIAN_2',2),(3,'STUDENT_LIBRARIAN_3',2),(4,'FACULTY_LIBRARIAN_1',1),(5,'FACULTY_LIBRARIAN_2',1);
/*!40000 ALTER TABLE `librarian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian_type`
--

DROP TABLE IF EXISTS `librarian_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarian_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(25) NOT NULL,
  `book_limit` int DEFAULT '1',
  `duration_limit` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_name_UNIQUE` (`type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian_type`
--

LOCK TABLES `librarian_type` WRITE;
/*!40000 ALTER TABLE `librarian_type` DISABLE KEYS */;
INSERT INTO `librarian_type` VALUES (1,'FACULTY',10,14),(2,'STUDENT',5,7);
/*!40000 ALTER TABLE `librarian_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patron`
--

DROP TABLE IF EXISTS `patron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patron` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patron`
--

LOCK TABLES `patron` WRITE;
/*!40000 ALTER TABLE `patron` DISABLE KEYS */;
INSERT INTO `patron` VALUES (1,'PATRON_1'),(2,'PATRON_2'),(3,'PATRON_3'),(4,'PATRON_4'),(5,'PATRON_5');
/*!40000 ALTER TABLE `patron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `unknown_authors`
--

DROP TABLE IF EXISTS `unknown_authors`;
/*!50001 DROP VIEW IF EXISTS `unknown_authors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `unknown_authors` AS SELECT 
 1 AS `id`,
 1 AS `title`,
 1 AS `author`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `csc785_mills_prj8_libmgmtsys`
--

USE `csc785_mills_prj8_libmgmtsys`;

--
-- Final view structure for view `book_multiple_copies`
--

/*!50001 DROP VIEW IF EXISTS `book_multiple_copies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `book_multiple_copies` AS select `book`.`title` AS `title`,`book`.`author` AS `author`,count(0) AS `count(*)` from `book` group by `book`.`title`,`book`.`author` having (count(0) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `unknown_authors`
--

/*!50001 DROP VIEW IF EXISTS `unknown_authors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `unknown_authors` AS select `book`.`id` AS `id`,`book`.`title` AS `title`,`book`.`author` AS `author` from `book` where (`book`.`author` = 'Unknown Author') order by `book`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-23 15:11:06
