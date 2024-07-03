    TRUNCATE TABLE mydb23.commentstable;
    TRUNCATE TABLE mydb23.photostable;
    SET FOREIGN_KEY_CHECKS = 0;
    TRUNCATE TABLE mydb23.travelstable;
    TRUNCATE TABLE mydb23.userstable;
    SET FOREIGN_KEY_CHECKS = 1;
-- -----------------------------------------------------
-- Table `travelstable`
-- -----------------------------------------------------

    INSERT INTO `mydb23`.`travelstable` 
    (`idTravelsTable`, `travelsName`, `travelsCost`, `nextDate`, `picture`, `TravelsTablecol`) 
    VALUES ('1', 'El hornocal', '1200000.0', '2024-01-01', 'a', 'a');


  INSERT INTO `mydb23`.`travelstable` 
    (`idTravelsTable`, `travelsName`, `travelsCost`, `nextDate`, `picture`, `TravelsTablecol`) 
    VALUES ('2', 'El talar', '1203000.0', '2024-08-01', 'B', 'S');

  INSERT INTO `mydb23`.`travelstable` 
    (`idTravelsTable`, `travelsName`, `travelsCost`, `nextDate`, `picture`, `TravelsTablecol`) 
    VALUES ('3', 'Cachi', '90000.0', '2024-01-20', 'c', 'f');


-- -----------------------------------------------------
-- Table `userstable`
-- -----------------------------------------------------

INSERT INTO `mydb23`.`userstable` 
(`idUsersTable`, `username`, `name`, `surrname`, `email`, `password`, `created_at`, `updated_at`) 
VALUES ('1', 'ser103', 'Sergio', 'Berton', 'ser@gmail.com', '1234', '2023-02-05', '2023-02-20');


INSERT INTO `mydb23`.`userstable` 
(`idUsersTable`, `username`, `name`, `surrname`, `email`, `password`, `created_at`, `updated_at`) 
VALUES ('2', 'car50', 'Carla', 'Blanco', 'carla@gmail.com', '4312', '2023-02-05', '2023-02-20');


INSERT INTO `mydb23`.`userstable` 
(`idUsersTable`, `username`, `name`, `surrname`, `email`, `password`, `created_at`, `updated_at`) 
VALUES ('3', 'lads50', 'pepe', 'Simone', 'simon@gmail.com', '43121', '2023-02-05', '2023-02-20');


-- -----------------------------------------------------
-- Table `commentstable`
-- -----------------------------------------------------

INSERT INTO `mydb23`.`commentstable` 
(`idCommentsTable`, `user_id`, `content`, `created_at`, `updated_at`, `toors_id`, `punctuation`) 
VALUES ('1', '1', 'Muy buen vieje!! Muy recomendado', '2023-03-23', '2023-03-30', '1', '4.3');

INSERT INTO `mydb23`.`commentstable` 
(`idCommentsTable`, `user_id`, `content`, `created_at`, `updated_at`, `toors_id`, `punctuation`) 
VALUES ('2', '3', 'Excelente servicio', '2023-03-23', '2023-03-30', '2', '4.5');

INSERT INTO `mydb23`.`commentstable` 
(`idCommentsTable`, `user_id`, `content`, `created_at`, `updated_at`, `toors_id`, `punctuation`) 
VALUES ('3', '2', 'Excelente ', '2023-03-23', '2023-03-30', '3', '3');


INSERT INTO `mydb23`.`commentstable` 
(`idCommentsTable`, `user_id`, `content`, `created_at`, `updated_at`, `toors_id`, `punctuation`) 
VALUES ('4', '2', 'Unos genios!!!', '2023-03-23', '2023-03-30', '1', '4.9');


-- -----------------------------------------------------
-- Table `photostable`
-- -----------------------------------------------------
INSERT INTO `mydb23`.`photostable` 
(`idPhotosTable`, `travels_id`, `title`, `description`, `file_path`, `upload_date`) 
VALUES ('1', '2', 'El hornocal en su magnificencia', 'Excelente', '1', '2024-01-02');

INSERT INTO `mydb23`.`photostable` 
(`idPhotosTable`, `travels_id`, `title`, `description`, `file_path`, `upload_date`) 
VALUES ('2', '1', 'Cachi', 'Excelente', '4', '2024-01-20');

