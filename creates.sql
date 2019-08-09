CREATE SCHEMA `tvseries_app` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `tvseries_app`.`tv_series` (
  `tv_series_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NULL,
  `image_url` VARCHAR(1000) NULL,
  PRIMARY KEY (`tv_series_id`));

INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('The Matrix', 'Science Fiction');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Rambo', 'Action');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('The Matrix Revoutions', 'Science Fiction');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Bourne', 'Spy');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Batman Begins', 'Action');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Scary Movie', 'Comedy');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('The Matrix Reloaded', 'Science Fiction');