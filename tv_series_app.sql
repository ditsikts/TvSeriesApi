CREATE SCHEMA `tvseries_app` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `tvseries_app`.`tv_series` (
  `tv_series_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NULL,
  `image_url` VARCHAR(1000) NULL,
  PRIMARY KEY (`tv_series_id`));

CREATE TABLE `tvseries_app`.`seasons` (
  `season_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `season_number` VARCHAR(45) NOT NULL,
  `date_aired` DATE NULL,
  `episodes` INT(5) NULL,
  `tv_series_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`season_id`),
  INDEX `tv_series_id_idx` (`tv_series_id` ASC) VISIBLE,
  CONSTRAINT `tv_series_id`
    FOREIGN KEY (`tv_series_id`)
    REFERENCES `tvseries_app`.`tv_series` (`tv_series_id`) ON DELETE NO ACTION ON UPDATE NO ACTION);

INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('The Matrix', 'Science Fiction');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Rambo', 'Action');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('The Matrix Revoutions', 'Science Fiction');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Bourne', 'Spy');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Batman Begins', 'Action');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('Scary Movie', 'Comedy');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `category`) VALUES ('The Matrix Reloaded', 'Science Fiction');