/*
Kevin Mills
CSC785
Project 8

File: 01_project8_library_mgmt_system_ddl.sql
Description: DDL commands to create the initial table structures for csc785_mills_prj8_libmgmtsys
Usage: ./mysql -u <USERNAME> --password=<PASSWORD> < /path/to/01_project8_library_mgmt_system_ddl.sql
*/


-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema csc785_mills_prj8_libmgmtsys
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `csc785_mills_prj8_libmgmtsys` ;

-- -----------------------------------------------------
-- Schema csc785_mills_prj8_libmgmtsys
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `csc785_mills_prj8_libmgmtsys` ;
SHOW WARNINGS;
USE `csc785_mills_prj8_libmgmtsys` ;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`librarian_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`librarian_type` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`librarian_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(25) NOT NULL,
  `book_limit` INT NULL DEFAULT 1,
  `duration_limit` INT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `type_name_UNIQUE` (`type_name` ASC) VISIBLE)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`librarian`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`librarian` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`librarian` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `librarian_type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_LIBRARIAN_1_idx` (`librarian_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_LIBRARIAN_1`
    FOREIGN KEY (`librarian_type_id`)
    REFERENCES `csc785_mills_prj8_libmgmtsys`.`librarian_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `author` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`patron`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`patron` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`patron` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`book_loan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `librarian_id` INT NOT NULL,
  `patron_id` INT NOT NULL,
  `loan_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` INT NOT NULL DEFAULT 7,
  PRIMARY KEY (`id`),
  INDEX `fk_BOOK_LOAN_1_idx` (`librarian_id` ASC) VISIBLE,
  INDEX `fk_BOOK_LOAN_2_idx` (`patron_id` ASC) VISIBLE,
  CONSTRAINT `fk_BOOK_LOAN_1`
    FOREIGN KEY (`librarian_id`)
    REFERENCES `csc785_mills_prj8_libmgmtsys`.`librarian` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_BOOK_LOAN_2`
    FOREIGN KEY (`patron_id`)
    REFERENCES `csc785_mills_prj8_libmgmtsys`.`patron` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`book_loan_book`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_book` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_book` (
  `book_loan_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  PRIMARY KEY (`book_loan_id`, `book_id`),
  INDEX `fk_BOOK_LOAN_BOOK_BOOK1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_BOOK_LOAN_BOOK_BOOK1`
    FOREIGN KEY (`book_id`)
    REFERENCES `csc785_mills_prj8_libmgmtsys`.`book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_BOOK_LOAN_BOOK_BOOK_LOAN1`
    FOREIGN KEY (`book_loan_id`)
    REFERENCES `csc785_mills_prj8_libmgmtsys`.`book_loan` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `csc785_mills_prj8_libmgmtsys`.`fine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `csc785_mills_prj8_libmgmtsys`.`fine` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `csc785_mills_prj8_libmgmtsys`.`fine` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `incurred_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` FLOAT NOT NULL DEFAULT 1.00,
  `paid_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `book_loan_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_FINE_1_idx` (`book_loan_id` ASC) VISIBLE,
  CONSTRAINT `fk_FINE_1`
    FOREIGN KEY (`book_loan_id`)
    REFERENCES `csc785_mills_prj8_libmgmtsys`.`book_loan` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
USE `csc785_mills_prj8_libmgmtsys`;

DELIMITER $$

USE `csc785_mills_prj8_libmgmtsys`$$
DROP TRIGGER IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_before_insert` $$
SHOW WARNINGS$$
USE `csc785_mills_prj8_libmgmtsys`$$
CREATE DEFINER = CURRENT_USER TRIGGER `csc785_mills_prj8_libmgmtsys`.`book_loan_before_insert` BEFORE INSERT ON `book_loan` FOR EACH ROW
BEGIN
	IF(NEW.duration > (SELECT lt.duration_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = NEW.librarian_id))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out a book for this duration.";
	END IF;
END$$

SHOW WARNINGS$$

USE `csc785_mills_prj8_libmgmtsys`$$
DROP TRIGGER IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_before_update` $$
SHOW WARNINGS$$
USE `csc785_mills_prj8_libmgmtsys`$$
CREATE DEFINER = CURRENT_USER TRIGGER `csc785_mills_prj8_libmgmtsys`.`book_loan_before_update` BEFORE UPDATE ON `book_loan` FOR EACH ROW
BEGIN
	IF(NEW.duration > (SELECT lt.duration_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = NEW.librarian_id))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out a book for this duration.";
	END IF;
END$$

SHOW WARNINGS$$

USE `csc785_mills_prj8_libmgmtsys`$$
DROP TRIGGER IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_before_insert2` $$
SHOW WARNINGS$$
USE `csc785_mills_prj8_libmgmtsys`$$
CREATE DEFINER = CURRENT_USER TRIGGER `csc785_mills_prj8_libmgmtsys`.`book_loan_before_insert2` BEFORE INSERT ON `book_loan` FOR EACH ROW
BEGIN
	IF((select count(*) from csc785_mills_prj8_libmgmtsys.fine where book_loan_id = (select id from csc785_mills_prj8_libmgmtsys.book_loan where patron_id = NEW.patron_id and paid_date is null)) > 0)
    THEN
		signal SQLSTATE '45000' SET message_text = "This patron cannot check out any books as there exists a fine with their ID.";
	END IF;
END$$

SHOW WARNINGS$$

USE `csc785_mills_prj8_libmgmtsys`$$
DROP TRIGGER IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_book_before_insert` $$
SHOW WARNINGS$$
USE `csc785_mills_prj8_libmgmtsys`$$
CREATE DEFINER = CURRENT_USER TRIGGER `csc785_mills_prj8_libmgmtsys`.`book_loan_book_before_insert` BEFORE INSERT ON `book_loan_book` FOR EACH ROW
BEGIN
	IF((select count(*) from csc785_mills_prj8_libmgmtsys.book_loan_book where book_loan_id = NEW.book_loan_id) > (SELECT lt.book_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = (select librarian_id from csc785_mills_prj8_libmgmtsys.book_loan where id = NEW.book_loan_id)))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out any more books for this book loan.";
	END IF;
END$$

SHOW WARNINGS$$

USE `csc785_mills_prj8_libmgmtsys`$$
DROP TRIGGER IF EXISTS `csc785_mills_prj8_libmgmtsys`.`book_loan_book_before_update` $$
SHOW WARNINGS$$
USE `csc785_mills_prj8_libmgmtsys`$$
CREATE DEFINER = CURRENT_USER TRIGGER `csc785_mills_prj8_libmgmtsys`.`book_loan_book_before_update` BEFORE UPDATE ON `book_loan_book` FOR EACH ROW
BEGIN
	IF((select count(*) from csc785_mills_prj8_libmgmtsys.book_loan_book where book_loan_id = NEW.book_loan_id) > (SELECT lt.book_limit FROM csc785_mills_prj8_libmgmtsys.librarian l, csc785_mills_prj8_libmgmtsys.librarian_type lt WHERE lt.id = l.librarian_type_id and l.id = (select librarian_id from csc785_mills_prj8_libmgmtsys.book_loan where id = NEW.book_loan_id)))
	THEN 
		signal SQLSTATE '45000' SET message_text = "This librarian cannot check out any more books for this book loan.";
	END IF;
END$$

SHOW WARNINGS$$

DELIMITER ;
