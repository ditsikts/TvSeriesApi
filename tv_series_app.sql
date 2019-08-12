CREATE SCHEMA `tvseries_app` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE `tvseries_app`.`tv_series` (
  `tv_series_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NULL,
  `image_url` VARCHAR(1000) NULL,
  PRIMARY KEY (`tv_series_id`));

CREATE TABLE `tvseries_app`.`seasons` (
  `season_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `season_number` VARCHAR(45) NOT NULL,
  `date_aired` DATE NULL,
  `episodes` INT(2) NULL,
  `tv_series_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`season_id`),
  INDEX `tv_series_id_idx` (`tv_series_id` ASC) VISIBLE,
  CONSTRAINT `fk_seasons_tvseries`
    FOREIGN KEY (`tv_series_id`)
    REFERENCES `tvseries_app`.`tv_series` (`tv_series_id`) ON DELETE NO ACTION ON UPDATE NO ACTION);

CREATE TABLE `tvseries_app`.`categories` (
  `category_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (`category_id`));

CREATE TABLE `tvseries_app`.`tvseries_category` (
  `tv_series_id` BIGINT(20) NOT NULL,
  `category_id` BIGINT(20) NOT NULL,
  UNIQUE (`tv_series_id`, `category_id`),
  INDEX `category_id_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_tvseriescategory_tvseries` FOREIGN KEY (`tv_series_id`) REFERENCES `tvseries_app`.`tv_series` (`tv_series_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tvseriescategory_category` FOREIGN KEY (`category_id`) REFERENCES `tvseries_app`.`categories` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Crime');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Sci-Fi');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Action');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Horror');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Drama');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Thriller');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Adventure');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Fantasy');
INSERT INTO `tvseries_app`.`categories` (`category`) VALUES ('Mystery');

INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Breaking Bad', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Altered Carbon', 'Ongoing');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Game of Thrones', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Stranger Things', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Sherlock', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Dexter', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('Fargo', 'Ended');
INSERT INTO `tvseries_app`.`tv_series` (`title`, `status`) VALUES ('FlashForward', 'Cancelled');

INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('1', '1');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('1', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('1', '6');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('2', '2');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('2', '3');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('2', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('3', '3');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('3', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('3', '7');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('4', '4');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('4', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('4', '8');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('5', '1');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('5', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('5', '9');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('6', '1');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('6', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('6', '9');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('7', '1');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('7', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('7', '6');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('8', '2');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('8', '5');
INSERT INTO `tvseries_app`.`tvseries_category` (`tv_series_id`, `category_id`) VALUES ('8', '9');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2008-01-20', '7', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2009-03-08', '13', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2010-03-21', '13', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2011-07-17', '13', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5a', '2012-07-15', '8', '1');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5b', '2013-08-11', '8', '1');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2018-02-02', '10', '2');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2011-04-17', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2012-04-01', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2013-03-31', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2014-04-06', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5', '2015-04-12', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 6', '2016-04-24', '10', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 7', '2017-07-16', '7', '3');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 8', '2019-04-14', '6', '3');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2016-07-15', '8', '4');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2017-10-27', '9', '4');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2019-04-04', '8', '4');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2010-07-25', '3', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2012-01-01', '3', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2014-01-01', '3', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Special', '2016-01-01', '1', '5');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2017-01-01', '3', '5');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2006-10-01', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2007-09-30', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2008-09-28', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 4', '2009-09-27', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 5', '2010-09-26', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 6', '2011-10-02', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 7', '2012-09-30', '12', '6');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 8', '2013-06-30', '12', '6');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 1', '2014-04-15', '10', '7');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 2', '2015-10-12', '10', '7');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Season 3', '2017-04-19', '10', '7');

INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Part 1', '2009-09-24', '10', '8');
INSERT INTO `tvseries_app`.`seasons` (`season_number`, `date_aired`, `episodes`, `tv_series_id`) VALUES ('Part 2', '2010-03-18', '12', '8');
