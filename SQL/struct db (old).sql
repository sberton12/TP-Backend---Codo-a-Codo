-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb23
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb23` ;

-- -----------------------------------------------------
-- Schema mydb23
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb23` DEFAULT CHARACTER SET utf8mb3 ;
SHOW WARNINGS;
USE mydb23;
-- -----------------------------------------------------
-- Table `travelstable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `travelstable` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `travelstable` (
  `idTravelsTable` INT NOT NULL AUTO_INCREMENT,
  `travelsName` VARCHAR(45) NOT NULL,
  `travelsCost` DECIMAL(10,0) NOT NULL,
  `nextDate` DATE NULL DEFAULT NULL,
  `picture` VARCHAR(45) NULL DEFAULT NULL,
  `TravelsTablecol` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTravelsTable`))
ENGINE = InnoDB,
AUTO_INCREMENT = 3,
DEFAULT CHARACTER SET = utf8mb3;


CREATE UNIQUE INDEX `idTravelsTable_UNIQUE` ON `travelstable` (`idTravelsTable` ASC);

-- -----------------------------------------------------
-- Table `userstable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `userstable` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `userstable` (
  `idUsersTable` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(10) NOT NULL,
  `name` VARCHAR(10) NOT NULL,
  `surrname` VARCHAR(10) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `created_at` DATE NOT NULL,
  `updated_at` DATE NOT NULL,
  PRIMARY KEY (`idUsersTable`))

ENGINE = InnoDB
AUTO_INCREMENT = 1001
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;
CREATE UNIQUE INDEX `idUsersTable_UNIQUE` ON `userstable` (`idUsersTable` ASC);
CREATE UNIQUE INDEX `username_UNIQUE` ON `userstable` (`username` ASC);
CREATE UNIQUE INDEX `email_UNIQUE` ON `userstable` (`email` ASC);


-- -----------------------------------------------------
-- Table `commentstable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `commentstable` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `commentstable` (
  `idCommentsTable` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `content` VARCHAR(45) NULL DEFAULT NULL,
  `created_at` DATE NULL DEFAULT NULL,
  `updated_at` DATE NULL DEFAULT NULL,
  `toors_id` INT NOT NULL,
  `punctuation` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`idCommentsTable`, `user_id`, `toors_id`),
  CONSTRAINT `fk_user_id`
  FOREIGN KEY (`user_id`)
    REFERENCES `mydb23`.`userstable` (`idUsersTable`),
  CONSTRAINT `fk_toors_id`
    FOREIGN KEY (`toors_id`)
    REFERENCES `mydb23`.`travelstable` (`idTravelsTable`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SHOW WARNINGS;
CREATE UNIQUE INDEX `idCommentsTable_UNIQUE` ON `commentstable` (`idCommentsTable` ASC);

-- -----------------------------------------------------
-- Table `photostable`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `photostable` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `photostable` (
  `idPhotosTable` INT NOT NULL AUTO_INCREMENT,
  `travels_id` INT NOT NULL,
  `title` VARCHAR(45) NULL DEFAULT NULL,
  `description` VARCHAR(45) NULL DEFAULT NULL,
  `file_path` VARCHAR(255) NOT NULL,
  `upload_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`idPhotosTable`, `travels_id`),
  CONSTRAINT `fk_travels_id`
    FOREIGN KEY (`travels_id`)
    REFERENCES `mydb23`.`travelstable` (`idTravelsTable`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;